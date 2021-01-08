<%--
  Created by IntelliJ IDEA.
  User: 89469
  Date: 2020/12/29
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //    获取主机和应用的名称
    String app=request.getContextPath();
//    可以将该对象放在session中，只需要在页面调用即可,应该在所有的允许用户直接访问的视图中添加
    request.getSession().setAttribute("app",app);
%>
<html>
<head>
    <title>管理员登录</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        body {
            background: linear-gradient(to bottom, skyblue 50%, white 100%);
        }
        h2, div {
            text-align: center;
        }
        h2 {
            position: relative;
            top: 200px;
            font-family: "等线 Light";
            font-size: 60px;
            color: gold;
        }
        div {
            position: absolute;
            top: 40%;
            left: 43%;
        }
        form>input{
            margin-top: 30px;
            margin-left: 15px;
        }
        .btn {
            width: 60px;
            margin-left: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<h2>管理员登录页</h2>
<div>
    <form method="post" action="${app}/gdmin/gdminlogincheck">
        学号：<input type="text" name="uid" placeholder="请输入管理员账户"><br>
        密码：<input type="password" name="password" placeholder="请输入密码"><br>
        <input type="reset" value="重置" class="btn">
        <input type="submit" value="登录" class="btn">
    </form>
</div>

</body>
<script>
    window.onload = function () {
        alert('用户名或密码错误！！！');
    }
</script>
</html>
