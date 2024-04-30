package com.kuang.controller;



import com.kuang.pojo.Order;

import com.kuang.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    @Qualifier("OrderServiceImpl")
    private OrderService orderService;

    @RequestMapping("/allOrder")
    public String list(Model model) {
        List<Order> list = orderService.queryAllOrder();
        model.addAttribute("list", list);
        return "allOrder";
    }

    @RequestMapping("/toAddOrder")
    public String toAddPaper() {
        return "addOrder";
    }

    @RequestMapping("/addBook")
    public String addPaper(Order order) {
        System.out.println(order);
        orderService.addOrder(order);
        return "redirect:/order/allOrder";
    }

    @RequestMapping("/toUpdateOrder")
    public String toUpdateOrder(Model model, int id) {
        Order order = orderService.queryOrderById(id);
        System.out.println(order);
        model.addAttribute("order", order);
        return "updateOrder";
    }

    @RequestMapping("/updateOrder")
    public String updateOrder(Model model, Order order) {
        System.out.println(order);
        orderService.updateOrder(order);
        Order orders = orderService.queryOrderById(order.getId());
        model.addAttribute("order", orders);
        return "redirect:/order/allOrder";
    }

    @RequestMapping("/del/{id}")
    public String deleteOrder( @PathVariable("id")int id) {
        orderService.deleteOrderById(id);
        return "redirect:/order/allOrder";
    }
}
