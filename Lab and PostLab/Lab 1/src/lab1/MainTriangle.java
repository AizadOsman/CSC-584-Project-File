/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1;

/**
 *
 * @author user
 */
public class MainTriangle {
    
    public static void main(String[] args) 
    {
        Triangle t1 = new Triangle (4.0, 5.0, 6.0);
        Triangle t2 = new Triangle (1.5, 2.5, 3.5);
        
        //display triangle1
        System.out.println("Triangle 1 ");
        System.out.println("Side1: " + t1.getSide1());
        System.out.println("Side1: " + t1.getSide2());
        System.out.println("Side1: " + t1.getSide3());
        System.out.println("Area: " + t1.calcArea());
        System.out.println("Perimeter: " + t1.calcPerimeter());
        
        System.out.println(""); //to skip one line
        
        //display triangle2
        System.out.println("Triangle 2 ");
        System.out.println("Side1: " + t2.getSide1());
        System.out.println("Side1: " + t2.getSide2());
        System.out.println("Side1: " + t2.getSide3());
        System.out.println("Area: " + t2.calcArea());
        System.out.println("Perimeter: " + t2.calcPerimeter());

    }
    
}

