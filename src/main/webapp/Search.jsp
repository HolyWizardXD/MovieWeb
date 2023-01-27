<%@ page language="java" contentType="text/html; utf-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>电影搜索</title>
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
        <table width="800" align="center" border="1" cellpadding="0">
        <tr>
            <th>电影序号</th>
            <th>电影名</th>
            <th>电影评分</th>
            <th>上映日期</th>
            <th>详情</th>
        </tr>
    <c:forEach items="${movies}" var="movie">
        <tr align="center">
            <td>${movie.id}</td>
            <td>${movie.movieName}</td>
            <td>${movie.movieGrade}</td>
            <td>${movie.date}</td>
            <td><a href="SelectByIdServlet?id=${movie.id}">查看/编辑详情</a> <a href="DeleteByIdServlet?id=${movie.id}">删除</a></td>
        </tr>
    </c:forEach>
            <div style="text-align: center"><button onclick="window.location.href = 'AddMovie.jsp'">添加电影</button></div>
    </table>
    </div>
    <div class = "floor">
        <p class="floor_font">CopyRight ©2022 软件工程 刘荣沛作品
            <br>建议使用IE9以上的浏览器</p>
    </div>
</div>
</body>
</html>
