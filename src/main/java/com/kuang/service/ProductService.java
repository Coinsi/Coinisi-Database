package com.kuang.service;

import com.kuang.pojo.Books;
import com.kuang.pojo.Product;

import java.util.List;

public interface ProductService {
    //增加一个Product
    int addProduct(Product product);
    //根据id删除一个Product
    int deleteProductById(int id);
    //更新Product
    int updateProduct(Product product);
    //根据id查询,返回一个Product
    Product queryProductById(int id);
    //查询全部Product,返回list集合
    List<Product> queryAllProduct();
}
