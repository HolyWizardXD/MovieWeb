<%@ page language="java" contentType="text/html; utf-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>登陆页面</title>
    <meta charset="UTF-8">
    <link rel="icon" href="icon/登录.png">
    <link type="text/css" rel="stylesheet" href="css/setting.css"/>
</head>
<body>
    <script language="JavaScript" src="js/html.js"></script>
    <div class="login_main">
        <div class="login_frame">
            <p class="login_title">登录</p>
            <div class="line"></div>
            <form method="post" action="LoginServlet">
            <img src="icon/用户名.png" class="user_icon"/>
            <input placeholder="请输入用户名" class="login_user" type="text" name="username" required="required"/>
            <img src="icon/密码.png" class="password_icon"/>
            <input placeholder="请输入密码" class="login_password" type="password" name="password" required="required"/>
                </br>
            <!--
            <p class="login_code">验证码</p>
            <p id="code" class="show_code">请点击右边按钮</p>
            <button class="code" onclick="change_code()">换一换</button>
            <input class="code_enter" placeholder="请输入答案" id="result"/>
            -->
            <input class="loginsub" type="submit" value="登录">
            </form>
            <a href="Register.jsp"><p class="back">还没有账户,点击注册</p></a>
        </div>
    </div>
</body>
</html>