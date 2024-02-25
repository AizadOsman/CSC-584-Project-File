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
public class Birthday extends Card 
{
    int age;
    
    public Birthday (String r, int years)
    {
        recipient = r;
        age = years;
    }
    
    public void greeting()
    {
        System.out.println("Dear " + recipient + ",\n");
        System.out.println("Happy " + age + "th Birthday\n\n");
    }
    
}

