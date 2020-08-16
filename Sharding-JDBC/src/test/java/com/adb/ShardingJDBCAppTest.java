package com.adb;

import com.adb.entity.Course;
import com.adb.entity.Item;
import com.adb.entity.Order;
import com.adb.entity.User;
import com.adb.mapper.CourseMapper;
import com.adb.mapper.ItemMapper;
import com.adb.mapper.OrderMapper;
import com.adb.mapper.UserMapper;
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

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private ItemMapper itemMapper;

    @Autowired
    private OrderMapper orderMapper;

    @Test
    public void addOrder(){
        Order order = new Order();
        order.setOrderName("订单2");
        order.setOrderMoney(2.6);
        orderMapper.insert(order);
    }

    @Test
    public void findOrder(){
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        wrapper.eq("order_id",501884648796717057l);
        Order order = orderMapper.selectOne(wrapper);
        System.out.println(order);
    }



    //=======================操作公共表t_item==对应配制文件为application03.properties的配制文件
    @Test
    public void addItem(){
        Item item = new Item();
        item.setCategory("user");
        item.setCode("a");
        item.setName("启用");
        itemMapper.insert(item);
    }

    @Test
    public void delIte(){
        QueryWrapper<Item> wrapper = new QueryWrapper<>();
        wrapper.eq("item_id",501819555950100481l);
        itemMapper.delete(wrapper);
    }

    @Test
    public void findItem(){
        QueryWrapper<Item> wrapper = new QueryWrapper<>();
        wrapper.eq("item_id",501818649607143425l);
        Item item = itemMapper.selectOne(wrapper);
        System.out.println(item);
    }



    //=======================垂直拆分表t_user==对应配制文件为application03.properties的配制文件
    @Test
    public void addUser(){
        User user = new User();
        user.setUserName("zhangsan");
        user.setUserStatus("a");
        userMapper.insert(user);
    }
    @Test
    public void findUser(){
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id",501803526754664449l);
        User course = userMapper.selectOne(wrapper);
        System.out.println(course);
    }



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

    //=======================水平分库，水平分表测试===application02.properties的配制文件===============
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
