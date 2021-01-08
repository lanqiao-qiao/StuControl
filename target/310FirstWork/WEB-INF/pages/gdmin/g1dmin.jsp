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
    <title>学生管理员登录</title>
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
            padding: 0;
            overflow: hidden;
            background: linear-gradient(to bottom,cadetblue 0%,white 100%);
        }
        .one {
            height: 10%;
            border: black 1px solid;
            text-align: center;
            font-size: 30px;
        }
        .two {
            position: absolute;
            top: 15%;
            left: 20%;
            /*border: 1px solid black;*/
        }
        .three {
            position: absolute;
            width: 15%;
            height: 90%;
            border: black solid 1px;
            border-top: none;
            text-align: center;
            background: linear-gradient(to bottom,rgb(88,140,126) 0%,rgb(145,231,207) 100%);
        }
        .guide {
            display: block;
            color: black;
            border-bottom: 1px black solid;
            height: 50px;
            width: 100%;
            background-color: rgb(72,121,122);
            line-height: 50px;
        }
        a {
            text-decoration: none;

        }
        table {
            border-collapse: collapse;

        }
    </style>
</head>
<body>
<div class="one">
    <P>欢迎学生管理员 ${GDMIN_SESSION.username}</P>

</div>

<div class="two">
    <table border="1"  cellpadding="10" cellspacing="0">
        <tr>
            <td>编号</td>
            <td>名字</td>
            <td>密码</td>
            <td>学号</td>
            <td>性别</td>
            <td>年龄</td>
            <td>学院</td>
            <td>专业</td>
            <td>班级</td>
            <td>就业单位</td>
            <td>薪水</td>
            <td>审核状态</td>
        </tr>
        <c:forEach items="${STU_GDMIN}" var="stu" varStatus="status">
            <tr>
                <th>${status.count}</th>
                <td>${stu.username}</td>
                <td>${stu.password}</td>
                <td>${stu.uid}</td>
                <td>${stu.sex}</td>
                <td>${stu.age}</td>
                <td>${stu.college}</td>
                <td>${stu.profession}</td>
                <td>${stu.stuclass}</td>
                <td>${stu.enterprise}</td>
                <td>${stu.salary}</td>
                <c:if test="${stu.isinf==0&&stu.istrue==0}">
                    <td><c:out value="未提交"/></td>
                </c:if>
                <c:if test="${stu.isinf==1&&stu.istrue==0}">
                    <td><c:out value="待审核"/></td>
                </c:if>
                <c:if test="${stu.isinf==1&&stu.istrue==1}">
                    <td><c:out value="已审核"/></td>
                </c:if>
                <td><a href="${app}/gdmin/deletestu?uid=${stu.uid}">删除</a></td>
                <td><a href="${app}/gdmin/changestu?uid=${stu.uid}">修改</a></td>
                <c:if test="${stu.isinf==1&&stu.istrue==0}">
                    <td><a href="${app}/gdmin/stutrue?uid=${stu.uid}">确认审核</a></td>
                </c:if>
                <c:if test="${stu.isinf==1&&stu.istrue==1}">
                    <td><p>已审核</p></td>
                </c:if>
                <c:if test="${stu.isinf==0&&stu.istrue==0}">
                    <td><p></p></td>
                </c:if>
            </tr>

        </c:forEach>
    </table>
</div>

<div class="three">
    <div class="four">
        <a class="guide" href="${app}/gdmin/addstu">添加</a>
        <a class="guide" href="#">添加</a>
        <a class="guide" href="#">添加</a>
        <a class="guide" href="#">添加</a>
    </div>
</div>

</body>
</html>
