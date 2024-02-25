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
public class NightVisit extends ZooTaiping
{
    private boolean packageA; //if visitor choose package A
    private boolean packageB; //if visitor choose package B
    private boolean packageC; //if visitor choose package C
    
    //constructor
    public NightVisit (String name, String ic, boolean govServ, boolean A, boolean B, boolean C)
    {
        super (name, ic, govServ);
        this.packageA = A;
        this.packageB = B;
        this.packageC = C;
    }
    
    //method totalCharge
    public double totalCharges()
    {
        double packagePrice = 0.0;
        
        if (packageA == true)
        {
            packagePrice = 50.00;
        }
        else if (packageB == true)
        {
            packagePrice = 75.00;
        }
        else if (packageC == true)
        {
            packagePrice = 100.00;
        }
        return packagePrice;
    }
    
    //getter
    public boolean getPackageC()
    {
        return packageC;
    }
    
    //printer
    public String toString()
    {
        return super.toString() + "\nPackage C: " +packageC;
    }
}
