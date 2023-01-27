package com.Liurp.servlet;

import com.Liurp.db.Login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Login login = new Login();
        boolean loginTF = login.login(username,password);
        PrintWriter writer = resp.getWriter();
        if(loginTF){
           Cookie cookie = new Cookie("isLogin","true");
           resp.addCookie(cookie);
           writer.write("<script>window.alert('登陆成功!')</script>");
           writer.write ("<script>window.location ='Home.jsp'</script>");
        }else{
            writer.write("<script>window.alert('登陆失败!')</script>");
            writer.write ("<script>window.location ='Login.jsp'</script>");
        }

    }
}
