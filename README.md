项目简介  
使用shardingsphere对数据库进行分库分表  
1：配制文件application01.properties--------》水平分表  
   该配制文件对表t_course进行了水平分表，改表在同一个数据库里面有两张结构相同的表，分别为t_course_1，t_course_2  
   按字段“cid”的值进行分表，该字段采用雪花算法的到一个唯一的值（SNOWFLAKE），如果该值为奇数就存入表t_course_2，如果为偶数就存入表t_course_1  
