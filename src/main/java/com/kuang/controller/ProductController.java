package com.kuang.controller;


import com.kuang.pojo.Product;
import com.kuang.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    @Qualifier("ProductServiceImpl")
    private ProductService productService;

    @RequestMapping("/allProduct")
    public String list(Model model) {
        List<Product> list = productService.queryAllProduct();
        model.addAttribute("list", list);
        return "allProduct";
    }
    @RequestMapping("/toAddProduct")
    public String toAddPaper() {
        return "addProduct";
    }

    @RequestMapping("/addProduct")
    public String addPaper(Product product) {
        System.out.println(product);
        productService.addProduct(product);
        return "redirect:/product/allProduct";
    }
    @RequestMapping("/toUpdateProduct")
    public String toUpdateProduct(Model model, int id) {
        Product product = productService.queryProductById(id);
        System.out.println(product);
        model.addAttribute("product",product );
        return "updateProduct";
    }

    @RequestMapping("/updateProduct")
    public String updateProduct(Model model, Product product) {
        System.out.println(product);
        productService.updateProduct(product);
        Product products = productService.queryProductById(product.getId());
        model.addAttribute("products", products);
        return "redirect:/product/allProduct";
    }

    @RequestMapping("/del/{id}")
    public String deleteProduct( @PathVariable("id")int id) {
        productService.deleteProductById(id);
        return "redirect:/product/allProduct";
    }
}
