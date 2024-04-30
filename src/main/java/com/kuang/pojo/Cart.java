package com.kuang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
    private int id;
    private int userId;
    private int productId;
    private int quantity;
    private int price;
    private double total;

}
