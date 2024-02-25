/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Register;
import java.sql.*;
import util.DBConnection;

/**
 *
 * @author user
 */
public class RegisterDao {
    
    public String registerUser (Register register)
    {
        String cust_fname = register.getCust_fname();
        String cust_lname = register.getCust_lname();
        String username = register.getUsername();
        String password = register.getPassword();
        
        Connection cn = null;
        Statement st = null;
        
        try 
        {
            cn = DBConnection.createConnection();
            
            PreparedStatement pstmt = cn.prepareStatement("INSERT INTO CUSTOMER (CUST_FNAME, CUST_LNAME, USERNAME, PASSWORD) VALUES(?,?,?,?)");
            pstmt.setString(1,cust_fname);
            pstmt.setString(2,cust_lname);
            pstmt.setString(3,username);
            pstmt.setString(4,password);
            
            int x = pstmt.executeUpdate();
            if (x>0)
            {
                return "SUCCESS";
            }
            else
            {
                return "FAIL";
            }
        }
        catch (SQLException e)
        {
            return e.getMessage();
        }
    }
    
}
