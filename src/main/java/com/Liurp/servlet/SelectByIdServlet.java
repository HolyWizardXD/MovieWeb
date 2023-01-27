package com.Liurp.servlet;

import com.Liurp.db.MovieOp;
import com.Liurp.entity.Movie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/SelectByIdServlet")
public class SelectByIdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String selectMovie = request.getParameter("id");
        MovieOp movieOp = new MovieOp();

        Movie movie = movieOp.selectById(Integer.parseInt(selectMovie));

        request.setAttribute("movie",movie);

        request.getRequestDispatcher("/Movie.jsp").forward(request,response);
    }
}