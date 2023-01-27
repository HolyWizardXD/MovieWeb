package com.Liurp.servlet;

import com.Liurp.db.Register;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Register register = new Register();
        boolean flag = register.register(username,password);
        PrintWriter writer = response.getWriter();
        if(flag){
            writer.write("<script>window.alert('注册成功!')</script>");
            writer.write ("<script>window.location ='Login.jsp'</script>");
        }else {
            writer.write("<script>window.alert('注册失败!')</script>");
            writer.write ("<script>window.location ='Register.jsp'</script>");
        }
    }
}
