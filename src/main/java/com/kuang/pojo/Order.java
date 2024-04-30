package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {
    private int id;
    private int userId;
    private String orderStatus;
    private double total;
    private Date orderTime;
}