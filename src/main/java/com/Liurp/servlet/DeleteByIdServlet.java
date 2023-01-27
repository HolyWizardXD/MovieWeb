package com.Liurp.servlet;

import com.Liurp.db.MovieOp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/DeleteByIdServlet")
public class DeleteByIdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String deleteMovie = request.getParameter("id");
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
            movieOp.deleteById(Integer.parseInt(deleteMovie));
            writer.write("<script>window.alert('删除成功!')</script>");
            writer.write ("<script>window.location ='Home.jsp'</script>");
        }else {
            writer.write("<script>window.alert('您没有登陆,删除失败!')</script>");
            writer.write("<script>window.location ='Home.jsp'</script>");
        }
    }
}