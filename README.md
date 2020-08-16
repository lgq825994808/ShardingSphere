项目简介  
使用shardingsphere对数据库进行分库分表  
1：配制文件application01.properties--------》操作表t_course（水平分表 ） 
   该配制文件对表t_course进行了水平分表，该表在同一个数据库里面有两张结构相同的表，分别为t_course_1，t_course_2  
   按字段"cid"的值进行分表，该字段采用雪花算法的到一个唯一的值（SNOWFLAKE），如果该值为奇数就存入表t_course_2，如果为偶数就存入表t_course_1  
2：配制文件application02.properties--------》操作表t_course（水平分库，水平分表 ）  
   该配制文件操作了两个数据库db1,db2,用"user_id"来确定分库，用"cid"来确定分表  
   两个字段都采用雪花算法得到唯一的值。  
   "user_id"偶数就添加到db1，奇数就添加到db2  
   "cid"偶数就添加到t_course_1，奇数就添加到t_course_2  
3:配制文件application03.properties--------》操作表t_course（水平分库，水平分表 ）,操作表t_user（垂直差分表）（只操作一个数据库，一张数据表）  
   操作表t_course与配制文件application02.properties里面的一样  
   操作表t_user为：该表只在其中一个数据库中存在，且只有一张表  
4：配制文件application.properties--------》  
   1）操作表t_course进行（水平分库，水平分表 ）  
        适用于数据量很大的表，这样会将数据平均分开，减轻数据库压力  
   2）操作表t_user进行（垂直差分表）（只操作一个数据库，一张数据表）  
        适用于数据量不是很大的表，这样只用操作一个地方的数据，操作容易  
   3）操作表t_item进行（进行广播）（每个数据库（db1,db2）里面都有一张该表，表结构一样，进行写入数据的时候，会同时操作两个数据库里面的该表）  
        适用于公共表（字典表之类的），数据量很小，使用频率很高的表  