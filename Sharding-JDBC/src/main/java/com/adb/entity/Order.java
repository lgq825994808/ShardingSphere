package com.adb.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("t_order")
public class Order {
    private Long orderId;
    private String orderName;
    private Double orderMoney;
}
