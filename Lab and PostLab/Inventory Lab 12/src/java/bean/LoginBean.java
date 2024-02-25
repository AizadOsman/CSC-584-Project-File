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
public class LoginBean implements java.io.Serializable {
    
    //Data member
    String userName;
    String password;
    
    //constructor
    public LoginBean()
    {
    }
    
    //Get
    public String getUserName()
    {
        return userName;
    }
    public String getPassword()
    {
        return password;
    }
    
    //Set
    public void setUserName (String user)
    {
        userName = user;
    }
    public void setPassword (String pass)
    {
        password = pass;
    }
}
