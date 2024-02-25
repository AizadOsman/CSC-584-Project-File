/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author user
 */
public class RegisterBean implements java.io.Serializable{
    
    //data members
    String name;
    String email;
    String username;
    String password;
    
    //constructor
    public RegisterBean()
    {
        name = "";
        email = "";
        username = "";
        password = "";
    }
    
    //Get
    public String getName()
    {
        return name;
    }
    public String getEmail()
    {
        return email;
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
    public void setName (String nm)
    {
        name = nm;
    }
    public void setEmail (String mail)
    {
        email = mail;
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
