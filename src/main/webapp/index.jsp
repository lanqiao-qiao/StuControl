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

        }
        a>button {
            cursor: pointer;
            outline: none;
            font-size: 30px;
            border: 0;
            background-color: transparent;
            position: relative;
            top: 300px;
            border-radius: 40%;
            margin-left: 70px;
            font-family: '微软雅黑';


        }
    </style>
</head>
<body>
<h2>Welcome to Information Manager System</h2>
<div>
    <a href="${app}/stu/stulogin">
        <button>学生入口></button>
    </a>
    <a href="${app}/gdmin/gdminlogin">
        <button>管理员入口></button>
    </a>

</div>
</body>
</html>
