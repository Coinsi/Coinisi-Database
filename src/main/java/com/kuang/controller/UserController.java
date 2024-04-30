package com.kuang.controller;


import com.kuang.pojo.User;

import com.kuang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    //跳转到登陆页面
    @RequestMapping("/jumplogin")
    public String jumpLogin() throws Exception {
        return "login";
    }

    //跳转到导航页面
    @RequestMapping("/jumpnavigation")
    public String jumpSuccess() throws Exception {
        return "navigation";
    }
    //跳到登录页面
    @RequestMapping("/jumpregister")
    public String jumpRegister()throws Exception {
        return "register";
    }

    //登陆提交
    @RequestMapping("/login")
    public String login(HttpSession session,@RequestParam("username") String username,@RequestParam("password") String password) throws Exception {
         //向session记录用户身份信息
        session.setAttribute("username", username);
        session.setAttribute("password",password);
        // 调用业务层的登录方法，返回一个User对象或者null
        User users = userService.queryUserByusername(username, password);
        if (users == null) {
            // 登录失败，返回错误信息
            return "login_error";
        } else {
            // 登录成功，将用户信息保存到session中，并跳转到主页
            return "navigation";
        }
    }

    //注册提交
    @RequestMapping("/register")
    public String register
    (@RequestParam("username") String username,
     @RequestParam("password") String password,
     @RequestParam("email") String email,
     @RequestParam("phone") String phone,
     @RequestParam("address")String address,
     User user
    ) throws Exception {
        // 调用业务层增加一个用户
        System.out.println(user);
        userService.addUser(user);
        return "redirect:/user/jumplogin";

    }


    //个人用户界面
    @RequestMapping("/topersonalpage")
    public String personalpage(HttpSession session, Model model){
        // 从session中获取登录信息
        String username = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");
        // 调用业务层的登录方法，返回一个User对象或者null
        User users = userService.queryUserByusername(username, password);
        model.addAttribute("user",users);
        return "personalpage";
    }


    //退出登陆
    @RequestMapping("logout")
    public String logout(HttpSession session) throws Exception {
        // session 过期
        session.invalidate();
        return "login";
    }
}
