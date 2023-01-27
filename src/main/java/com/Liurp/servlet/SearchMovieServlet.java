package com.Liurp.servlet;

import com.Liurp.db.MovieOp;
import com.Liurp.entity.Movie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/SearchMovieServlet")
public class SearchMovieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String searchMovie = request.getParameter("searchMovie");
        MovieOp movieOp = new MovieOp();
        List<Movie> movies = movieOp.searchByName(searchMovie);

        request.setAttribute("movies",movies);

        request.getRequestDispatcher("/Search.jsp").forward(request,response);
    }
}
