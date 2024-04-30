package com.kuang.service;

import com.kuang.pojo.Order;

import java.util.List;

public interface OrderService {
    //增加一个Order
    int addOrder(Order order);

    //根据id删除一个Order
    int deleteOrderById(int id);

    //更新Order
    int updateOrder(Order order);

    //根据id查询,返回一个Order
    Order queryOrderById(int id);

    //查询全部Order,返回list集合
    List<Order> queryAllOrder();
}
