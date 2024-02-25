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
public abstract class ZooTaiping 
{
    private String visitorName;
    private String icNumber;
    private boolean govServant;
    
    //constructor
    public ZooTaiping (String name, String ic, boolean govServ)
    {
        visitorName = name;
        icNumber = ic;
        govServant = govServ;
    }
    
    //method abstract
    public abstract double totalCharges();
    
    //printer
    public String toString()
    {
        return "\nVisitor Name: " + visitorName + "\nIC Number: " + icNumber + "\nGovernment Servant: " + govServant;
    }
}
