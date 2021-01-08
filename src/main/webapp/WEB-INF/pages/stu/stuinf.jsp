<%--
  Created by IntelliJ IDEA.
  User: 89469
  Date: 2020/12/29
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
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
        input {

            margin: 15px 0;
        }
        .hide {
            display: none;
        }
        .one {
            position: absolute;
            height: 10%;
            width: 100%;
            background-color: cadetblue;
            text-align: center;

        }
        .two {
            position: absolute;
            background-color: cadetblue;
            top: 10%;
            width: 15%;
            height: 90%;
            text-align: center;
            border: 1px solid black;
        }
        .three {
            border: 1px solid black;
            width: 85%;
            height: 90%;
            position: absolute;
            top: 10%;
            left: 15%;
            background: linear-gradient(to bottom,cadetblue 0%,white 100%);
        }
        .four {
            position: relative;
            top: 50px;
            left: 40%;
            width: 400px;

            font-size: 30px;
        }
        input {
            height: 30px;
        }
        .btn {
            width: 75px;
            height: 25px;
            margin-left: 30px;
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
    </style>
</head>
<body>

<%--    <p>${STU_SESSION.username}</p>--%>
<%--    <input type="text" value="${STU_SESSION.username}">--%>
<%--    <a href="www.baidu.com"><input type="submit" value="提交" ></a>--%>

<div class="one">
    <h1>欢迎你${STU_SESSION.uid}</h1>
</div>
<div class="two">
<a href="#">个人信息</a>
<a href="#">专业行情分析</a>
<a href="#">就业行情分析</a>
<a href="#">关于我们</a>
<a href="#">联系我们</a>
</div>
<div class="three">
   <div class="four">
       <form method="post" enctype="multipart/form-data" action="${app}/stu/stuupdateinf">

       姓名：     <input type="text" name="username" value="${STU_SESSION.username}"><br>
           <input class="hide" type="text" name="password" value="${STU_SESSION.password}">
           <input class="hide" type="text" name="uid" value="${STU_SESSION.uid}">
      性别：     <input type="text" name="sex" value="${STU_SESSION.sex}"><br>
      年龄：     <input type="text" name="age" value="${STU_SESSION.age}"><br>
      学院：     <input type="text" name="college" value="${STU_SESSION.college}"><br>
      专业：     <input type="text" name="profession" value="${STU_SESSION.profession}"><br>
      班级：     <input type="text" name="stuclass" value="${STU_SESSION.stuclass}"><br>
           <input class="hide" id="isinf" type="text" name="isinf" value="${STU_SESSION.isinf}">
           <input class="hide" type="text" name="istrue" value="${STU_SESSION.istrue}">
      工作：     <input type="text" name="enterprise" value="${STU_SESSION.enterprise}"><br>
      薪水：     <input type="text" name="salary" value="${STU_SESSION.salary}"><br>
           <input type="button" value="修改" onclick="scl(this)" class="btn">
           <input type="button" class="btn" id="sub" onclick="funnc(this)" value="提交审核"></input>
       </form>
   </div>
</div>
<script>
    var x = document.getElementsByTagName('input');
    function pan() {
        for (let i =0 ;i<x.length-1;i++)
        {

            if(x[i].value=='')
            {
               return true;
            }
        }
        return false;
    }
    function scl(ex) {


            ex.type = 'submit';

    }
    function func1(){
        if(${STU_SESSION.isinf==0})
        {
            alert('信息未提交审核');
        }
        else{
            document.getElementById('sub').style.display = 'none';
        }
    }
    window.onload = function () {
        func1();
    }
    function funnc(ss) {
        let p=pan();
        if(p)
        {
            alert('上述内容不能为空');
        }
        else{
            document.getElementById('isinf').value = 1;
            ss.type = 'submit';
        }

    }

</script>
</body>
</html>
