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
public class ShardingProxyAppTest {

    @Autowired
    private CourseMapper courseMapper;

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
    public void addCourseDb(){
        Course course = new Course();
        course.setCname("js");
        course.setUserId(106L);
        course.setCstatus("已上架");
        courseMapper.insert(course);
    }

    @Test
    public void findCourse(){
        QueryWrapper<Course> wrapper = new QueryWrapper<>();
        wrapper.eq("cid",501804053546663937l);
        Course course = courseMapper.selectOne(wrapper);
        System.out.println(course);
    }

}
