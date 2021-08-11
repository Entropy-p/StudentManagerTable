

开发步骤

1.使用test的mysql库，创建student表（sno,sname,addr,phone,sex,remark）

2.新建maven的web项目

3.加入依赖
    servlet依赖,jsp依赖,jackson依赖,springmvc依赖,spring依赖,mybatis依赖,mysql驱动,druid连接池（druid）

4.写web.xml
    1）注册中央调度器 DispatcherServlet 创建springmvc容器的对象，管理controller类的对象

    2）注册spring监听器：ContextLoaderListener 创建spring的容器对象，管理service，dao对象.

    3）注册字符集过滤器，解决post请求乱码的问题

5.创建包，controller service dao 实体类包名

6.写springmvc spring mybatis 的配置文件，数据库的属性配置文件

7.写jsp index页面

8.写java代码 dao接口和mapper文件  service和实现类 controller类 实体类

