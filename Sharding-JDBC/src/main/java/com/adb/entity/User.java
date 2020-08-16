package com.adb.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("t_user")
public class User {

    private Long userId;
    private String userName;
    private String userStatus;
}
