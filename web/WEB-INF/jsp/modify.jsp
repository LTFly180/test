<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2021/6/23
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="css/font-awesome.min.css" type="text/javascript" rel="stylesheet">
    <link href="css/bootsnav.css" type="text/css" rel="stylesheet">
    <link href="css/normalize.css" type="text/css" rel="stylesheet">
    <link href="css/css.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootsnav.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>
    <!--[if IE]><script src="js/html5.js"></script><![endif]-->
    <title></title>
</head>

<body class="logobg_style">
<div id="large-header" class="large-header login-page">
    <canvas id="demo-canvas" width="1590" height="711"></canvas>
    <div class="login-form">
        <div class="login-content">
            <h1 class="title_name">修改密码</h1>
            <form method="post" action="${pageContext.request.contextPath}/user/modify" role="form" id="form_login" class="login_padding">
                <form method="post" role="form" id="" class="login_padding">
                    <div class="form-group clearfix">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="icon_user"></i>
                            </div>
                            <input type="text" value="${sessionScope.user.user_name}" class="form-control" name="user_name" id="password" placeholder="昵称" autocomplete="off">
                        </div>
                    </div>

                    <div class="form-group clearfix">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="icon_password"></i>
                            </div>
                            <input type="password" class="form-control" name="user_password1" id="password" placeholder="旧密码" autocomplete="off">
                        </div>

                    </div>
                    <div class="form-group clearfix">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="icon_password"></i>
                            </div>
                            <input type="password" class="form-control" name="user_password2" id="password" placeholder="新密码" autocomplete="off">
                        </div>

                    </div>
                    <div class="form-group clearfix">

                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="icon_password"></i>
                            </div>

                            <input type="password" class="form-control" name="user_password3" id="password" placeholder="再次确认新密码" autocomplete="off">
                        </div>

                    </div>
                    <div style="font-size:20px;color: #d43f3a"><span>${error_msg}</span></div>
                    <div class="form-group">
                        <input href="javascript:;" type="submit" class="btn btn-danger btn-block btn-login" value="修改" >
                        <i class="fa fa-sign-in"></i>
                        </input>
                    </div>
                    <div class=" textright"><a href="${pageContext.request.contextPath}/user/gologin" class="forget">前往登录</a></div>
                    <!-- Implemented in v1.1.4 -->				<div class="form-group">
                </div>




                </form>
        </div>

    </div>
</div>

<script src="js/TweenLite/TweenLite.min.js"></script>
<script src="js/TweenLite/EasePack.min.js"></script>
<script src="js/TweenLite/rAF.js"></script>
<script src="js/TweenLite/demo-1.js"></script>
</body>
</html>
