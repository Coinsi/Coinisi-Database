package com.kuang.controller;

import com.kuang.pojo.OrderDetail;
import com.kuang.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("orderDetail")
public class OrderDetailController {
    @Autowired
    @Qualifier("OrderDetailServiceImpl")
    private OrderDetailService orderDetailService;

    @RequestMapping("/allorderDetail")
    public String list(Model model) {
        List<OrderDetail> list = orderDetailService.queryAllOrderDetail();
        model.addAttribute("list", list);
        return "allOrderDetail";
    }
}
