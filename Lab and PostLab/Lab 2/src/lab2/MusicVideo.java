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
public class MusicVideo extends VideoTape 
{
    String artist;
    String category;
    
    //constructor
    public MusicVideo (String ttl, int lngth, String artist, String category)
    {
        super(ttl, lngth);
        this.artist = artist;
        this.category = category;
    }
    
    public void show()
    {
        super.show();
        System.out.println("Artist: " + artist + " " + "Category: " + category);
    }
}

