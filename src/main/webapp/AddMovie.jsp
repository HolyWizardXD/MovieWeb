<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电影添加</title>
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
    <div class = "addMovie_main">
        <div class="add_movie_frame">
            <h1 class="add_movie_title">添加电影</h1>
            <form action="AddMovieServlet" method="post">
                <input placeholder="请输入电影名" class="addMovieInput" type="text" name="movieName" required="required"/>
                </br>
                <input placeholder="请输入电影评分 格式:X.X" class="addMovieInput" type="text" name="movieGrade" required="required" min="0" max="10" onkeyup="value=value.replace(/[^\d{1,}\.\d{1,}|\d{1,}]/g,'')"/>
                </br>
                <input placeholder="上映日期 格式:XXXX-XX-XX" class="addMovieInput" type="text" name="date" required="required"/>
                </br>
                <textarea placeholder="请输入描述" class="descriptionInput" type="text" name="description" required="required"></textarea>
                </br>
                <input type="submit" value="提交" class="add_sub">
            </form>
        </div>
    </div>
    <a href="https://www.bilibili.com/movie/" class="body_floor" target="_blank">友情链接</a>
    <div class = "floor">
        <p class="floor_font">CopyRight ©2022 软件工程 刘荣沛作品
            <br>建议使用IE9以上的浏览器</p>
    </div>
</div>
</body>
</html>
