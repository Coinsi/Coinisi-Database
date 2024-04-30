package com.kuang.service;

import com.kuang.dao.PaymentMapper;
import com.kuang.pojo.Payment;

import java.util.List;

public class PaymentServiceImpl implements PaymentService{

    private PaymentMapper paymentMapper;

    public void setPaymentMapper(PaymentMapper paymentMapper) {
        this.paymentMapper = paymentMapper;
    }

    @Override
    public int addPayment(Payment payment) {
        return paymentMapper.addPayment(payment);
    }

    @Override
    public int deletePaymentById(int id) {
        return paymentMapper.deletePaymentById(id);
    }

    @Override
    public int updatePayment(Payment payment) {
        return paymentMapper.updatePayment(payment);
    }

    @Override
    public Payment queryPaymentById(int id) {
        return paymentMapper.queryPaymentById(id);
    }

    @Override
    public List<Payment> queryAllPayment() {
        return paymentMapper.queryAllPayment();
    }
}
