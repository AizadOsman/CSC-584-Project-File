/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.movie.model;

/**
 *
 * @author user
 */
import java.io.Serializable;

public class MovieItem implements Serializable
{
    String title;
    String year;
    String genre;
    
    //constructor
    public MovieItem (String title, String year, String genre)
    {
        this.title = title;
        this.year = year;
        this.genre = genre;
    }
    
    //constructor for initialize
    /*public MovieItem() 
    {
        title = null;
        year = null;
        genre = null;
    }*/

    //getter
    public String getTitle() 
    {
        return title;
    }
    public String getYear()
    {
        return year;
    }
    public String getGenre()
    {
        return genre;
    }
}