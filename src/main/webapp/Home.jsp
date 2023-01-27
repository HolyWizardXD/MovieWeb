<%@ page language="java" contentType="text/html; utf-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>WEB电影网</title>
    <meta charset="UTF-8">
    <link rel="icon" href="icon/电影title.png">
    <link type="text/css" rel="stylesheet" href="css/setting.css"/>
</head>
<body>
    <div class="main">
        <script language="JavaScript" src="js/html.js"></script>
        <div class = "head">
            <span class="icon"><img src="icon/电影.png" width="60" height="60"/></span>
            <ul class="ui">
                <li><a href="Home.jsp">首页</a></li>
                <li><a>爱情</a></li>
                <li><a>喜剧</a></li>
                <li><a>动作</a></li>
                <li><a>科幻</a></li>
                <li><a>恐怖</a></li>
                <li><a>动画</a></li>
                <li><a>动漫</a></li>
            </ul>
            <form action="SearchMovieServlet" method="post">
                <span class="login_icon"><img src="icon/登录.png" width="45px" height="45px"/></span>
                <a href="Login.jsp" class="login">登录</a>
                <input class="search" name="searchMovie" placeholder="搜索" id="se" spellcheck =“false”/>
                <img src="icon/搜索.png" class="search_icon"/>
            </form>
        </div>
        <div class = "body">
            <img src="title_img/1.jpg" class="img" id="01"/>
            <div class="midle_title">
                <h1 class="video_title">热映中：长津湖</h1>
            </div>
            <div class="video">
                <video src="video/长津湖预告.mp4" controls="controls"></video>
            </div>
            <div class="midle_title">
                <h1 class="video_title">--好片推荐--</h1>
            </div>
            <img src="img/fly.jpg" class="recommend"/>
            <img src="img/kongfu.jpg" class="recommend"/>
            <img src="img/young man.jpg" class="recommend"/>
            <img src="img/wandering earth.jpg" class="recommend"/>
            <img src="img/space.jpg" class="recommend"/>
            <img src="img/nz.jpg" class="recommend"/>
            <img src="img/yourname.jpg" class="recommend"/>
        </div>
        <a href="https://www.bilibili.com/movie/" class="body_floor" target="_blank">友情链接</a>
        <div class = "floor">
            <p class="floor_font">CopyRight ©2022 软件工程 刘荣沛作品
            <br>建议使用IE9以上的浏览器</p>
        </div>
    </div>
</body>
</html>