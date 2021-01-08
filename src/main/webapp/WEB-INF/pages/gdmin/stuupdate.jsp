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
        input {
            display: block;
            margin: 15px 0;
        }
        .hide {
            display: none;
        }


        body {
            width: 100%;
            height: 100%;
            position: relative;
            /*overflow: hidden;*/
            margin: 0;
            padding: 0;
            z-index: 10;
        }

        .one {
            position: fixed;
            height: 10%;
            width: 100%;
            background-color: cadetblue;
            text-align: center;
            border-bottom: black 1px solid;
            z-index: 11;
        }
        .two {
            position: fixed;
            background-color: cadetblue;
            width: 15%;
            top: 10%;
            height: 90%;
            text-align: center;
            border: 1px solid black;
            border-bottom: none;
            z-index: 11;
        }
        .three {
            width: 85%;
            height: 90%;
            position: absolute;
            /*border:  1px solid black;*/
            border-bottom: none;
            top: 10%;
            left: 15%;
            z-index: 10;
            background: linear-gradient(to bottom,cadetblue 0%,white 100%);
        }
        .four {
            width: 400px;
            height: 600px;
            position: relative;
            top: 5%;
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
        .dishide {
            width: 300px;
            height: 30px;
            display: inline-block;
            border-top: none;
            border-left: none;
            border-right: none;
            outline: none;
            background-color: transparent;
        }
        label {
            width: 90px;
            display: inline-block;
        }
        .btn {
            width: 80px;
            height: 40px;
            position: relative;

            left: 45%;


            /*background-image: linear-gradient(to left,red 0%,yellow 20%,green 40%,blue 60%,purple 80%,black 100%);*/
            /*background-size: 500%;*/
            /*animation: btn  2s  infinite;*/
        }

        /*@keyframes btn {*/
        /*    from{*/
        /*        background-position: 0%;*/
        /*    }*/
        /*    to{*/
        /*        background-position: 100%;*/
        /*    }*/
        /*}*/
    </style>
</head>
<body>
<div class="one">
    <h2>修改学生信息</h2>
</div>
<div class="three">
    <div class="four">
        <form method="post" enctype="multipart/form-data" action="${app}/gdmin/updatestu">
            <input class="hide" type="text" name="id" value="${changestu.id}" placeholder="请输入更新的用户id"/>
            <label for="uid">学号：</label>
            <input class="dishide" id="uid" type="text" name="uid" value="${changestu.uid}" placeholder="请输入更新的用户学号"/>
            <label for="name">学号：</label>
            <input class="dishide" id="name"  type="text" name="username" value="${changestu.username}" placeholder="请输入更新的用户名"/>
            <label for="pwd">密码：</label>
            <input class="dishide" id="pwd" type="text" name="password" value="${changestu.password}" placeholder="请输入更新的密码"/>
            <label for="sex">性别：</label>
            <input class="dishide" id="sex"  type="text" name="sex" value="${changestu.sex}" placeholder="性别"/>
            <label for="age">年龄：</label>
            <input class="dishide"id="age"  type="text" name="age" value="${changestu.age}" placeholder="年龄"/>
            <label for="college">学院：</label>
            <input class="dishide"id="college"  type="text" name="college" value="${changestu.college}" placeholder="学院"/>
            <label for="profession">专业：</label>
            <input class="dishide"id="profession"  type="text" name="profession" value="${changestu.profession}" placeholder="专业"/>
            <label for="stuclass">班级：</label>
            <input class="dishide"id="stuclass"  type="text" name="stuclass" value="${changestu.stuclass}" placeholder="班级"/>
            <label for="enterprise">企业：</label>
            <input class="dishide"id="enterprise"  type="text" name="enterprise" value="${changestu.enterprise}" placeholder="企业"/>
            <label for="salary">薪水：</label>
            <input class="dishide"id="salary"  type="text" name="salary" value="${changestu.salary}" placeholder="薪水"/>
            <input class="hide" type="text" name="isinf" value="${changestu.isinf}" placeholder=" 信息标志"/>
            <input class="hide" type="text" name="istrue" value="${changestu.istrue}" placeholder=" 确认标志"/>
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
