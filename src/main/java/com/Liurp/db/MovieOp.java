package com.Liurp.db;

import com.Liurp.entity.Movie;
import com.Liurp.mapper.MovieMapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class MovieOp {
    public List<Movie> searchByName(String movieName){
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryAdd.getSqlSessionFactory();

        SqlSession sqlSession = sqlSessionFactory.openSession();

        MovieMapper movieMapper = sqlSession.getMapper(MovieMapper.class);

        movieName = "%" + movieName + "%";

        List<Movie> movies = movieMapper.selectByName(movieName);

        sqlSession.close();

        return movies;
    }

    public boolean addMovie(String movieName,Double movieGrade,String date,String description){
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryAdd.getSqlSessionFactory();

        SqlSession sqlSession = sqlSessionFactory.openSession();

        MovieMapper movieMapper = sqlSession.getMapper(MovieMapper.class);

        Movie movie = new Movie();
        movie.setMovieName(movieName);
        movie.setMovieGrade(movieGrade);
        movie.setDate(date);
        movie.setDescription(description);


        if(movieName != null && !movieName.equals("") && date != null && !date.equals("") && description != null && !description.equals("") && movieGrade >= 0 && movieGrade <= 10){
            movieMapper.movieAdd(movie);
            sqlSession.commit();
            sqlSession.close();
            return true;
        }else {
            sqlSession.close();
            return false;
        }
    }

    public boolean deleteById(int id){
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryAdd.getSqlSessionFactory();

        SqlSession sqlSession = sqlSessionFactory.openSession();

        MovieMapper movieMapper = sqlSession.getMapper(MovieMapper.class);

        movieMapper.movieDelete(id);
        sqlSession.commit();
        return true;
    }

    public Movie selectById(int id){
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryAdd.getSqlSessionFactory();

        SqlSession sqlSession = sqlSessionFactory.openSession();

        MovieMapper movieMapper = sqlSession.getMapper(MovieMapper.class);

        Movie movie = movieMapper.selectById(id);

        return movie;
    }

    public void updateById(Movie movie){
        SqlSessionFactory sqlSessionFactory = SqlSessionFactoryAdd.getSqlSessionFactory();

        SqlSession sqlSession = sqlSessionFactory.openSession();

        MovieMapper movieMapper = sqlSession.getMapper(MovieMapper.class);

        movieMapper.movieUpdate(movie);
        sqlSession.commit();
        sqlSession.close();
    }
}
