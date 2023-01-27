package com.Liurp.entity;

public class Movie {

    private Integer id;
    private String movieName;
    private double movieGrade;
    private String date;
    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public double getMovieGrade() {
        return movieGrade;
    }

    public void setMovieGrade(double movieGrade) {
        this.movieGrade = movieGrade;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", movieName='" + movieName + '\'' +
                ", movieGrade=" + movieGrade +
                ", date='" + date + '\'' +
                ", description='" + description + '\'' +
                '}';
    }


}
