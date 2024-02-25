/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package postlab3;

/**
 *
 * @author user
 */
public class DayVisit extends ZooTaiping
{
    private String category;
    
    //constructor
    public DayVisit (String name, String ic, boolean govServ, String category)
    {
        super (name, ic, govServ);
        this.category = category;
    }
    
    //method totalCharge
    public double totalCharges() 
    {
        double totalCharges = 0.0;
        
        if (category.equalsIgnoreCase("Adult"))
        {
            totalCharges = 25.00;
        }
        else if (category.equalsIgnoreCase("Children"))
        {
            totalCharges = 15.00;
        }
        return totalCharges;
    }
    
    //printer
    public String toString()
    {
        return super.toString() + "Category: " + category;
    }
}

