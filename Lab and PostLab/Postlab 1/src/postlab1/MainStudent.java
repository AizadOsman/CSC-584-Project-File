/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package postlab1;

/**
 *
 * @author user
 */
public class MainStudent 
{
    public static void main (String [] args)
    {
        Student st1 = new Student ();
        Student st2 = new Student ();
        Student st3 = new Student ();
        Student st4 = new Student ();
        
        
        st1.setData("Aiman", "2019264666", "CS230", 25.00, 15.00, 45.00);
        st2.setData("Aisyah", "2022987652", "CS240", 28.0, 20.0, 45.0 );
        st3.setData("Aidil", "2023747567", "CS255", 30.0, 20.0, 50.0);
        st4.setData("Aina", "2024876543", "CS259", 22.0, 15.0, 35.0); 
        
        //display student 1
        System.out.println (st1.toString());
        System.out.println ("Total Mark : " +st1.calculateFinalMarks());
        
        //display student 2
        System.out.println ("\n" +st2.toString());
        System.out.println ("Total Mark : " +st2.calculateFinalMarks());
        
        //display student 3
        System.out.println ("\n" +st3.toString());
        System.out.println ("Total Mark : " +st3.calculateFinalMarks());
        
        //display student 4
        System.out.println ("\n" +st4.toString());
        System.out.println ("Total Mark : " +st4.calculateFinalMarks());
    }
    
}

