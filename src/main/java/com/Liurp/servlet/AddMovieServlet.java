package com.Liurp.servlet;

import com.Liurp.db.Login;
import com.Liurp.db.MovieOp;
import com.Liurp.entity.Movie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/AddMovieServlet")
public class AddMovieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String movieName = request.getParameter("movieName");
        String movieGrade = request.getParameter("movieGrade");
        String date = request.getParameter("date");
        String description = request.getParameter("description");

        MovieOp movieOp = new MovieOp();

        PrintWriter writer = response.getWriter();

        String value = null;

        Cookie[] cookies = request.getCookies();
        for(Cookie cookie : cookies){
            String name = cookie.getName();
            if("isLogin".equals(name)){
                value = cookie.getValue();
            }
        }
        if(value != null) {
            boolean flag = movieOp.addMovie(movieName,Double.parseDouble(movieGrade),date,description);
            if(flag){
                writer.write("<script>window.alert('添加成功!')</script>");
                writer.write("<script>window.location ='Home.jsp'</script>");
            }else {
                writer.write("<script>window.alert('添加失败!')</script>");
                writer.write ("<script>window.location ='AddMovie.jsp'</script>");
            }
        }else {
            writer.write("<script>window.alert('您没有登陆,添加失败!')</script>");
            writer.write ("<script>window.location ='AddMovie.jsp'</script>");
        }
    }
}
