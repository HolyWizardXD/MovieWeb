<%@ page language="java" contentType="text/html; utf-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>注册页面</title>
    <meta charset="UTF-8">
    <link rel="icon" href="icon/登录.png">
    <link type="text/css" rel="stylesheet" href="css/setting.css"/>
</head>
<body>
<script language="JavaScript" src="js/html.js"></script>
<div class="login_main">
    <div class="register_frame">
        <p class="login_title">注册</p>
        <div class="line"></div>
        <form method="post" action="RegisterServlet">
            <img src="icon/用户名.png" class="user_icon"/>
            <input placeholder="请输入用户名" class="login_user" type="text" name="username" required="required"/>
            <img src="icon/密码.png" class="password_icon"/>
            <input placeholder="请输入密码" class="login_password" type="password" name="password" required="required"/>
            </br>
            <input class="loginsub" type="submit" value="注册">
        </form>
    </div>
</div>
</body>
</html>