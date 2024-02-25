/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.*;
import model.Login;
import util.DBConnection;

/**
 *
 * @author user
 */
public class LoginDao {
    
    public String authenticateUser(Login login){
    
        String username = login.getUsername();
        String password = login.getPassword();
        
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;
        
        String usernameDB = "";
        String passwordDB = "";
        
        try
        {
            cn = DBConnection.createConnection();
            st = cn.createStatement();
            rs = st.executeQuery("SELECT USERNAME, PASSWORD FROM CUSTOMER");
            while(rs.next()){
                usernameDB = rs.getString("USERNAME");
                passwordDB = rs.getString("PASSWORD");
                if(username.equals(usernameDB) && password.equals(passwordDB))
                {
                    return "SUCCESS";
                }
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return "Invalid username or password!";
    }
    
}
