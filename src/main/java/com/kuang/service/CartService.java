package com.kuang.service;

import com.kuang.pojo.Cart;

import java.util.List;

public interface CartService {
    //增加一个Cart
    int addCart(int userId,int productId,int quantity);
    //根据id删除一个Cart
    int deleteCartById(int id);
    //根据id查询,返回一个Cart
    Cart queryCartById(int id);
    //查询全部Cart,返回list集合
    List<Cart> queryAllCart();
}
