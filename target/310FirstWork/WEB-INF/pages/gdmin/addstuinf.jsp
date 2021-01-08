<%--
  Created by IntelliJ IDEA.
  User: 89469
  Date: 2020/7/21
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生详细信息</title>
    <style>

        * {
            margin: 0;
            padding: 0;
        }
        body {
            width: 100%;
            height: 100%;
            position: relative;
            overflow: hidden;
        }

        .one {
            position: absolute;
            height: 10%;
            width: 100%;
            background-color: cadetblue;
            text-align: center;
            border:  1px solid black;
        }
        .two {
            position: absolute;
            background-color: cadetblue;
            width: 15%;
            top: 10%;
            height: 90%;
            text-align: center;
            border: 1px solid black;
        }
        .three {
            width: 85%;
            height: 90%;
            position: absolute;
            border:  1px solid black;
            top: 10%;
            left: 15%;
            background: linear-gradient(to bottom,cadetblue 0%,white 100%);
        }
        .four {
            width: 400px;
            height: 600px;
            position: relative;
            top: 15%;
            left: 25%;
            /*border: 1px solid red;*/
        }
        a {
            border-bottom: 1px black solid;
            display: block;
            text-decoration: none;
            height: 50px;
            width: 100%;
            background-color: rgb(72,121,122);
            line-height: 50px;
        }
        label {
            width: 90px;
            display: inline-block;
        }
        .btn {
            width: 80px;
            height: 40px;
            position: relative;
            left: 50%;
            margin-top: 40px;
        }
        input {
            width: 300px;
            height: 30px;
            display: inline-block;
            margin: 15px 0;
        }
    </style>
</head>
<body>
<div class="one">
    <h2>添加学生</h2>
</div>
<div class="three">
    <div class="four">
        <form method="post" enctype="multipart/form-data" action="${app}/gdmin/addstuinf">
             <label for="uid">学号：</label>
             <input id="uid" type="text" name="uid" value="${changestu.uid}" placeholder="请输入更新的用户学号"/>
             <label for="name">姓名：</label>
             <input id="name" type="text" name="username" value="${changestu.username}" placeholder="请输入更新的用户名"/>
             <label for="pwd">密码：</label>
             <input id="pwd" type="text" name="password" value="${changestu.password}" placeholder="请输入更新的密码"/>
            <input class="btn" type="submit" value="确认添加" />
        </form>
    </div>
</div>
<div class="two">
<a href="#">关于我们</a>
<a href="#">关于我们</a>
<a href="#">关于我们</a>
<a href="#">关于我们</a>
<a href="#">关于我们</a>
</div>
</body>
</html>
