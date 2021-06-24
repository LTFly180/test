<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2021/6/23
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://"
          + request.getServerName() + ":" + request.getServerPort()
          + path + "/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
  <base href="<%=basePath%>">
  <title>主页</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- 引入 Bootstrap -->
  <link rel="stylesheet" href="css/bootstrap4.min.css" />
</head>
<body>
<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="page-header">
        <h1>
          <a href="${pageContext.request.contextPath}/book/allBook">点击进入列表页</a>
        </h1>
        <hr/>
      </div>
    </div>
  </div>
</div>
<div class="container">
  <div class="row">
    <div class = "col-md-3 column">
      <div class="btn-group">
        <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown" data-display="static">账号管理</button>
        <div class="dropdown-menu dropdown-menu-lg-right">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/user/gomodify"> 修改密码 </a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/user/logout"> 注销账号 </a>
        </div>
      </div>
      <br/>
      <span style="color: red">${error_msg}</span>
    </div>
  </div>
</div>
<br/>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap4.bundle.min.js"></script>
<script src="js/bootstrap4.min.js"></script>
</body>
</html>