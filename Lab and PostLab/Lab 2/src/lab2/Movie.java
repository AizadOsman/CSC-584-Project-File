/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab2;

/**
 *
 * @author user
 */
public class Movie extends VideoTape
{
    String director;
    String rating;
    
    //constructor invoked by super()
    public Movie(String t, int l, String d, String r)
    {
        super(t,l);
        director = d;
        rating = r;
    }
  
    //added to class movie
    public void show()
    {
        super.show();
        System.out.println("\n" + title + ", " + length + " min. available:" + avail);
        System.out.println("Director: " + director + " Rating: " + rating);
    }
}

