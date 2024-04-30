package com.kuang.service;

import com.kuang.pojo.OrderDetail;

import java.util.List;

public interface OrderDetailService {
    //增加一个OrderDetail
    int addOrderDetail(OrderDetail orderDetail);
    //根据id删除一个OrderDetail
    int deleteOrderDetailById(int orderId);
    //更新OrderDetail
    int updateOrderDetail(OrderDetail orderDetails);
    //根据id查询,返回一个OrderDetail
    OrderDetail queryOrderDetailById(int  orderId);
    //查询全部OrderDetail,返回list集合
    List<OrderDetail> queryAllOrderDetail();
}
