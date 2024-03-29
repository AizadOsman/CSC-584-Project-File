import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class SimpleRegistration extends HttpServlet 
{
    //use a prepared statement to store a student into the database
    private PreparedStatement pstmt;
    
    public void init() throws ServletException
    {
        initializeJdbc();
    }
    /**
     * Process the HTTP Post Request
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        //obtain parameters from client
        String lastName = request.getParameter("lastName");
        String firstName = request.getParameter("lastName");
        String mi = request.getParameter("mi");
        String phone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String address = request.getParameter("street");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String postcode = request.getParameter("postcode");
        
        try 
        {
            if (lastName.length() == 0 || firstName.length() == 0)
            {
                out.println("Last Name and First Name are required");
                return; //end the method
            }
            storeStudent(lastName, firstName, mi, phone, email, address, city, state, postcode);
            out.println(firstName + " " + lastName + " is now registered in the database");
        }
        catch (Exception ex)
        {
            out.println("Error: " + ex.getMessage());
        }
        finally 
        {
            out.close(); //Close stream
        }
    }
    
    /**
     * Initialize database connection
     */
    private void initializeJdbc() 
    {
        try 
        {
            //Declare driver and connection String
            String driver = "org.apache.derby.jdbc.ClientDriver";
            String connectionString = "jdbc:derby://localhost:1527/AddressDB;create=true;user=app;password=app";
            
            //Load the driver
            Class.forName(driver);
            
            //Connect to the sample database
            Connection conn = DriverManager.getConnection(connectionString);
            
            //Create a statement
            pstmt = conn.prepareStatement ("inset into Address "
                    + "(lastName, firstName, mi, telephone, email, street, city, "
                    + "state, postcode) values (?, ?, ?, ?, ?, ?, ?, ?, ?,)");
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        } 
    }
    
    /**
     * Store a student record to the database
     */
    private void storeStudent (String lastName, String firstName, String mi, String phone, String email, String address,
                               String city, String state, String postcode) throws SQLException 
    {
        pstmt.setString(1, lastName);
        pstmt.setString(2, firstName);
        pstmt.setString(3, mi);
        pstmt.setString(4, phone);
        pstmt.setString(5, email);
        pstmt.setString(6, address);
        pstmt.setString(7, city);
        pstmt.setString(8, state);
        pstmt.setString(9, postcode);
        pstmt.executeUpdate();
    }
}