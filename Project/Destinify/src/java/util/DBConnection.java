/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class DBConnection {
    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String url = "jdbc:derby://localhost:1527/Destinify";
            String username = "app";
            String password = "app";
            return DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            throw new SQLException("Database driver not found", e);
        }
    }
    
    public static Connection createConnection(){
        Connection conn = null;
        String url = "jdbc:derby://localhost:1527/Destinify;create=true";
        String username = "app";
        String password = "app";
        
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");   
        }
        catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        try {
            conn = DriverManager.getConnection(url,username,password);
             System.out.println("Printing connection object" + conn);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
       return conn;
    }
    
}
