/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author user
 */
public class Login implements java.io.Serializable {
    
    //Data member
    String username;
    String password;
    
    //Constructor
    public Login() 
    {
   
    }
    
    //Get
    public String getUsername()
    {
        return username;
    }
    public String getPassword()
    {
        return password;
    }
    
    //Set
    public void setUsername (String user)
    {
        username = user;
    }
    public void setPassword (String pass)
    {
        password = pass;
    }
    
}
