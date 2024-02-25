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
public class VideoTape 
{
    String title; //name of the item
    int length; //num of minutes
    boolean avail; //is the tape in the store?
    
    // constructor
    public VideoTape( String ttl )
    {
        title = ttl; length = 90; avail = true;
    }

    // constructor
    public VideoTape( String ttl, int lngth )
    {
        title = ttl; length = lngth; avail = true;
    }

    public void show()
    {    
        System.out.println( title + ", " + length + " min. available:" +avail );
    }    
}

