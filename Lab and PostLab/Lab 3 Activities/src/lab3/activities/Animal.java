/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3.activities;

/**
 *
 * @author user
 */
public abstract class Animal
{
    private String name;
    
    public Animal (String nm)
    {
        name = nm;
    }
    
    public String getName ()
    {
        return (name);
    }
    
    public abstract void speak();
}
