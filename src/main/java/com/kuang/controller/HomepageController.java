package com.kuang.controller;


import com.kuang.pojo.Product;
import com.kuang.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.apache.logging.log4j.core.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;



@Controller
public class HomepageController {


    @Autowired
    @Qualifier("ProductServiceImpl")
    private ProductService productService;
    @RequestMapping("/home")
    public String Home(Model model){
        List<Product> list = productService.queryAllProduct();
        model.addAttribute("list", list);
        return "homepage";
    }
}
