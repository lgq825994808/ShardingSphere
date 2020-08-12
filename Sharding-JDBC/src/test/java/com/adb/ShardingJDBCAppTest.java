package com.adb;

import com.adb.entity.Course;
import com.adb.mapper.CourseMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ShardingJDBCAppTest {

    @Autowired
    private CourseMapper courseMapper;

    //=======================水平分表测试==对应配制文件为application01.properties的配制文件
    @Test
    public void addCourse(){
        for(int i=0;i<10;i++){
            Course course = new Course();
            course.setCname("java"+i);
            course.setUserId(100L);
            course.setCstatus("已上架");
            courseMapper.insert(course);
        }
    }
    @Test
    public void findCourse(){
        QueryWrapper<Course> wrapper = new QueryWrapper<>();
        wrapper.eq("cid",497182804874887169l);
        Course course = courseMapper.selectOne(wrapper);
        System.out.println(course);
    }

    //=======================水平分库，水平分表测试==================
    @Test
    public void findCourseDb(){
        QueryWrapper<Course> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id",101);
        wrapper.eq("cid",500443464610086913l);
        Course course = courseMapper.selectOne(wrapper);
        System.out.println(course);
    }

    @Test
    public void addCourseDb(){
        Course course = new Course();
        course.setCname("php");
        course.setUserId(101L);
        course.setCstatus("已上架");
        courseMapper.insert(course);
    }
}
