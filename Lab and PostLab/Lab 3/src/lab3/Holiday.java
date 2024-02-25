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
public class Holiday extends Card
{
   public Holiday (String r)
   {
       recipient = r;
   } 
   
   public void greeting()
   {
       System.out.println("Dear " + recipient + "\n");
       System.out.println("Season's Greetings!\n\n");
   }
}
