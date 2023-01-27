package com.Liurp.mapper;

import com.Liurp.entity.Movie;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MovieMapper {

    public List<Movie> selectAll();

    public Movie selectById(int id);

    public List<Movie> selectByName(@Param("movieName")String movieName);

    public void movieAdd(Movie movie);

    public int movieUpdate(Movie movie);

    public void movieDelete(int id);

    public void movieDeletes(@Param("ids")int[] ids);
}
