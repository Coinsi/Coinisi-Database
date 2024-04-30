package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Payment {
    private int id;
    private int orderId;
    private String method;
    private String status;
    private Date paymentTime;
}