package com.kuang.service;

import com.kuang.dao.OrderDetailMapper;
import com.kuang.dao.OrderMapper;
import com.kuang.pojo.OrderDetail;

import java.util.List;

public class OrderDetailServiceImpl implements OrderDetailService{
    private  OrderDetailMapper orderDetailMapper;

    public void setOrderDetailMapper(OrderDetailMapper orderDetailMapper) {
        this.orderDetailMapper = orderDetailMapper;
    }

    @Override
    public int addOrderDetail(OrderDetail orderDetail) {
        return orderDetailMapper.addOrderDetail(orderDetail);
    }

    @Override
    public int deleteOrderDetailById(int  orderId) {
        return orderDetailMapper.deleteOrderDetailById( orderId);
    }

    @Override
    public int updateOrderDetail(OrderDetail orderDetail) {
        return orderDetailMapper.updateOrderDetail(orderDetail);
    }

    @Override
    public OrderDetail queryOrderDetailById(int  orderId) {
        return orderDetailMapper.queryOrderDetailById( orderId);
    }

    @Override
    public List<OrderDetail> queryAllOrderDetail() {
        return orderDetailMapper.queryAllOrderDetail();
    }
}
