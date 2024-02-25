/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.RegisterBean;
import java.sql.*;
import util.DBConnection;
/**
 *
 * @author user
 */
public class RegisterDao {
    
    public String registerUser(RegisterBean registerBean){
        
        String fullname = registerBean.getName();
        String email = registerBean.getEmail();
        String username = registerBean.getUsername();
        String password = registerBean.getPassword();
        
        Connection conn = null;
        Statement statement = null;
        
        
        try{
            conn = DBConnection.createConnection();
            
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO USERS(USERNAME,PASSWORD,FULLNAME,EMAIL) VALUES(?,?,?,?)");
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            pstmt.setString(3,fullname);
            pstmt.setString(4,email);
            
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
