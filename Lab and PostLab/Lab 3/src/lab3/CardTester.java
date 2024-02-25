/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3;

/**
 *
 * @author user
 */
public class CardTester
{
    public static void main (String [] args)
    {
        /*Holiday hol = new Holiday ("Santa");
        hol.greeting();
        
        Birthday bd = new Birthday ("Maria", 21);
        bd.greeting();*/
        
        Card card = new Holiday ("Amy");
        card.greeting();                   //invoke a Holiday greeting()
        
        card = new Birthday ("Cindy", 17);
        card.greeting();                  //invoke a Birthday greeting()
    } 
}


