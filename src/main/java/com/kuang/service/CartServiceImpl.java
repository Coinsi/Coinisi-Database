package com.kuang.service;

import com.kuang.dao.CartMapper;
import com.kuang.pojo.Cart;

import java.util.List;

public class CartServiceImpl implements CartService{
    private CartMapper cartMapper;

    @Override
    public int addCart(int userId,int productId,int quantity) {
        return cartMapper.addCart(userId,productId,quantity);
    }

    public void setCartMapper(CartMapper cartMapper) {
        this.cartMapper = cartMapper;
    }

    @Override
    public int deleteCartById(int id) {
        return cartMapper.deleteCartById(id) ;
    }


    @Override
    public Cart queryCartById(int id) {
        return cartMapper.queryCardById(id);
    }

    @Override
    public List<Cart> queryAllCart() {
        return cartMapper.queryAllCart();
    }
}
