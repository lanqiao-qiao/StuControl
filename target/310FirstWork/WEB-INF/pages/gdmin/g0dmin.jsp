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
    <title>至尊管理员登录</title>
    <style>
        /** {*/
        /*    margin: 0;*/
        /*    padding: 0;*/
        /*}*/
        body {
            position: relative;
            width: 100%;
            height: 100%;
            margin: 0;
            z-index: 10;
            padding: 0;
            overflow: hidden;
            background: linear-gradient(to bottom,cadetblue 0%,white 100%);
        }
        .one {
            height: 10%;
            border-bottom:  black 1px solid;
            text-align: center;
            font-size: 30px;
            z-index: 11 ;
        }
        .two {
            position: absolute;
            top: 15%;
            left: 20%;
            z-index: 11;
        }
        .three {
            position: absolute;
            width: 15%;
            height: 90%;
            z-index: 10;
            border: green solid 1px;
            text-align: center;
            background: linear-gradient(to bottom,rgb(88,140,126) 0%,rgb(145,231,207) 100%);
        }
        .href {
            display: block;

            border-bottom: 1px black solid;
            height: 50px;
            width: 100%;
            background-color: rgb(72,121,122);
            line-height: 50px;
        }
        .href,
        .href2 {
            text-decoration: none;
        }
        table {
            border-collapse: collapse;
        }
    </style>
</head>
<body>
<div class="one"><P>欢迎至尊管理员   ${GDMIN_SESSION.username}</P></div>
<div class="three">
    <a class="href" href="#">管理员管理</a>
    <a class="href" href="#">1</a>
    <a class="href" href="#">2</a>
    <a class="href" href="#">3</a>
    <a class="href" href="#">4</a>
</div>
<div class="two">
    <table border="1"  cellspacing="0" cellpadding="20" >
        <tr>
            <td>编号</td>
            <td>名字</td>
            <td>密码</td>
            <td>账号</td>
            <td>权限</td>
            <td colspan="2"></td>
        </tr>
        <c:forEach items="${ALL_GDMIN}" var="gdmin" varStatus="status">
            <tr>
                <th>${status.count}</th>
                <td>${gdmin.username}</td>
                <td>${gdmin.password}</td>
                <td>${gdmin.uid}</td>
                <td>${gdmin.level}</td>
                <td><a class="href2" href="${app}/gdmin/deletegdmin?uid=${gdmin.uid}">删除</a></td>
                <td><a class="href2" href="${app}/gdmin/changegdmin?uid=${gdmin.uid}">修改</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
