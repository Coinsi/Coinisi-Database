package com.kuang.dao;

import com.kuang.pojo.Books;
import com.kuang.pojo.Cart;

import java.util.List;

public interface CartMapper {


    int addCart(int userId,int productId,int quantity);

    int deleteCartById(int id);

    Cart queryCardById(int id);

    List<Cart> queryAllCart();
}
