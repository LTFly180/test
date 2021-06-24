<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2021/6/23
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>欢迎访问图书管理系统</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-9 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/goregist"> 去注册 </a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/gologin"> 去登录 </a>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>
</body>
</html>

