package com.adb.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("t_item")
public class Item {
    private Long item_id;
    private String category;
    private String code;
    private String name;
}
