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
class TapeStore
{
    public static void main ( String args[] )
    {
        VideoTape item1 = new VideoTape("Jaws", 120 );
        Movie item2 = new Movie("Jaws", 120, "Spielberg", "PG" );
        MusicVideo item3 = new MusicVideo("\nI wish you love", 3, "Laufey","R&B");
        
        item1.show();
        item2.show();
        item3.show();
    }
}



