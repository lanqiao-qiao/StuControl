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
    <title>管理员详细信息</title>
    <style>
        input {
            display: block;
            margin: 15px 0;
        }
        .hide {
            display: none;
        }

         * {
             margin: 0;
             padding: 0;
         }
        body {
            width: 100%;
            height: 100%;
            position: relative;
            z-index: 10;
            overflow: hidden;
        }

        .one {
            position: absolute;
            height: 10%;
            width: 100%;
            background-color: cadetblue;
            text-align: center;
            border-bottom:  1px solid black;
            z-index: 11;
        }
        .two {
            position: absolute;
            background-color: cadetblue;
            width: 15%;
            top: 10%;
            height: 90%;
            z-index: 11;
            text-align: center;
            border: 1px solid black;
        }
        .three {
            width: 85%;
            height: 90%;
            position: absolute;
            /*border:  1px solid red;*/
            top: 10%;
            left: 15%;
            z-index: 10;
            background: linear-gradient(to bottom,cadetblue 0%,white 100%);
        }
        .four {
            width: 400px;
            height: 600px;
            position: relative;
            top: 15%;
            left: 25%;

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
        .dishide {
            width: 300px;
            height: 30px;
            display: inline-block;
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
    </style>
</head>
<body>
<div class="one">
    <h2>修改管理员信息</h2>
</div>
<div class="three">
    <div class="four">
        <form method="post" enctype="multipart/form-data" action="${app}/gdmin/update">
            <input class="hide" type="text" name="id" value="${changegdmin.id}" placeholder="请输入更新的用户id"/>

            <input class="hide" type="text" name="uid" value="${changegdmin.uid}" placeholder="请输入更新的用户id"/>
            <label for="name"> 用户名：</label>
            <input id="name" class="dishide" type="text" name="username" value="${changegdmin.username}" placeholder="请输入更新的用户名"/><br>
            <label for="pwd">用户密码：</label>
            <input id="pwd" class="dishide"  type="text" name="password" value="${changegdmin.password}" placeholder="请输入更新的密码"/><br>
            <label for="level">管理等级：</label>
            <input id="level" class="dishide"  type="text" name="level" value="${changegdmin.level}" placeholder="请输入更新的权限"/><br>

            <input class="btn" type="submit" value="修改" />
        </form>
    </div>
</div>
<div class="two">
    <a href="#">关于我们</a>
    <a href="#">关于我们</a>
    <a href="#">关于我们</a>
    <a href="#">关于我们</a>
</div>
</body>
</html>
