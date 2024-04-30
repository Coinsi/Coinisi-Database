package com.kuang.controller;

import com.kuang.pojo.User;
import com.kuang.service.CartService;
import com.kuang.service.ProductService;
import com.kuang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller

public class CartController {

    @Autowired
    @Qualifier("CartServiceImpl")
    private CartService cartService;

    @Qualifier("UserServiceImpl")
    private UserService userService;
    @Qualifier("ProductServiceImpl")
    private ProductService productService;


    @RequestMapping("cart")
    public String cart(Model model, HttpSession session){
        // 从session中获取登录信息
        String username = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");
        // 调用业务层的登录方法，返回一个User对象或者null
        User user = userService.queryUserByusername(username, password);
        int userID = user.getId();


        return "cart";
    }




}
