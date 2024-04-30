package com.kuang.service;

import com.kuang.pojo.Payment;

import java.util.List;

public interface PaymentService {
    //增加一个Payment
    int addPayment(Payment payment);
    //根据id删除一个Payment
    int deletePaymentById(int id);
    //更新Payment
    int updatePayment(Payment payment);
    //根据id查询,返回一个Payment
    Payment queryPaymentById(int id);
    //查询全部Payment,返回list集合
    List<Payment> queryAllPayment();
}
