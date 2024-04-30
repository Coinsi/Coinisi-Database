package com.kuang.controller;
import com.kuang.pojo.Payment;
import com.kuang.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("payment")
public class PaymentController {
    @Autowired
    @Qualifier("PaymentServiceImpl")
    private PaymentService paymentService;

    @RequestMapping("/allpayment")
    public String list(Model model) {
        List<Payment> list = paymentService.queryAllPayment();
        model.addAttribute("list", list);
        return "allPayment";
    }
}
