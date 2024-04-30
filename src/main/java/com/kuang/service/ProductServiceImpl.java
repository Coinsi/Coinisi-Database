package com.kuang.service;

import com.kuang.dao.BookMapper;
import com.kuang.dao.ProductMapper;
import com.kuang.pojo.Books;
import com.kuang.pojo.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    //调用dao层的操作，设置一个set接口，方便Spring管理
    private ProductMapper productMapper;

    public void setProductMapper(ProductMapper productMapper) {
        this.productMapper = productMapper;
    }

    public int addProduct(Product product) {
        return productMapper.addProduct(product);
    }

    public int deleteProductById(int id) {
        return productMapper.deleteProductById(id);
    }

    public int updateProduct(Product product) {
        return productMapper.updateProduct(product);
    }

    public Product queryProductById(int id) {
        return productMapper.queryProductById(id);
    }

    public List<Product> queryAllProduct() {
        return productMapper.queryAllProduct();
    }
}