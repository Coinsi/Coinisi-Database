package com.kuang.service;


import com.kuang.dao.OrderMapper;
import com.kuang.pojo.Order;
import com.kuang.pojo.User;

import java.util.List;

public class OrderServiceImpl implements OrderService{
    //调用dao层的操作，设置一个set接口，方便Spring管理
    private OrderMapper orderMapper;
    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }
    //增加一个Order
  public  int addOrder(Order order){
        return orderMapper.addOrder(order);
    }

    //根据id删除一个Order
   public int deleteOrderById(int id){
        return orderMapper.deleteOrderById(id);
    }

    //更新Order
   public int updateOrder(Order order){
        return orderMapper.updateOrder(order);
    }

    //根据id查询,返回一个Order
  public   Order queryOrderById(int id){
        return orderMapper.queryOrderById(id);
    }

    //查询全部Order,返回list集合
   public List<Order> queryAllOrder(){
        return orderMapper.queryAllOrder();
    }


    public OrderMapper getOrderMapper() {
        return orderMapper;
    }
}
