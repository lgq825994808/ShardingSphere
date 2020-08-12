package com.adb.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import javax.persistence.Table;

@Data
@TableName("t_course")
public class Course {

    private Long cid;
    private String cname;
    private Long userId;
    private String cstatus;
}
