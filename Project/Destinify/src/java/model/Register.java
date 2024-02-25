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
public class Register {
    
    //Data member
    String cust_fname;
    String cust_lname;
    String username;
    String password;
    
   //Constructor
    public Register()
    {
    }
    
    //Get
    public String getCust_fname()
    {
        return cust_fname;
    }
    public String getCust_lname()
    {
        return cust_lname;
    }
    public String getUsername()
    {
        return username;
    }
    public String getPassword()
    {
        return password;
    }
    
    //Set
    public void setCust_fname (String fname)
    {
        cust_fname = fname;
    }
    public void setCust_lname (String lname)
    {
        cust_lname = lname;
    }
    public void setUsername (String user)
    {
        username = user;
    }
    public void setPassword (String pass)
    {
        password = pass;
    }
    
}
