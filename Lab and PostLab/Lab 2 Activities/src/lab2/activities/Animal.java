/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab2.activities;

/**
 *
 * @author user
 */
class Animal 
{
    public String hairColor;
    
    public Animal()
    {
        hairColor = "unknown";
    }
    
    public Animal(String hc)
    {
        hairColor = hc;
    }
    
    public String getHairColor()
    {
        return hairColor;
    }
    
    public String toString()
    {
        return "I am an Animal with " + hairColor + "hair color.";
    }
}
