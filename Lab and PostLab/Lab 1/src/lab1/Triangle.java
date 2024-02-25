/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1;


public class Triangle {
    double side1;
    double side2;
    double side3;
    
    //default constructor (no parameter)
    public Triangle()
    {
       side1 = 1.0;
       side2 = 1.0;
       side3 = 1.0;
    }
    
    //normal constructor (yes parameter)
    public Triangle (double a, double b, double c)
    {
      side1 = a;
      side2 = b;
      side3 = c;
    }
    
    //accessor
    public double getSide1()
    {
        return side1;
    }
    public double getSide2()
    {
        return side2;
    }
    public double getSide3()
    {
        return side3;
    }
    
    //mutator (set method)
    public void setSide1 (double side1)
    {
        this.side1 = side1;
    }
    
     public void setSide2 (double side2)
    {
        this.side1 = side2;
    }
     
      public void setSide3 (double side3)
    {
        this.side1 = side3;
    }
    
    //method/processor
    public double calcArea()
    {
        double area;
        area = (side1 * side2) /2;
        return area;
    }
    
    public double calcPerimeter()
    {
        return side1 + side2 + side3;
    }
    
}
