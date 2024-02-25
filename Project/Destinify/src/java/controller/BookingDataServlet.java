/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Booking;
import util.DBConnection;

/*
 *
 * @author ASUS
 */
public class BookingDataServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookingDataServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingDataServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Booking> bookings = retrieveBookingDataFromDatabase();
        request.setAttribute("bookings", bookings);
        request.getRequestDispatcher("cancelBookPage.jsp").forward(request, response);
    }
    
    private List<Booking> retrieveBookingDataFromDatabase() {
        List<Booking> bookings = new ArrayList<>();

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM BOOKING");
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                int bookingId = rs.getInt("BOOK_ID");
                String packageType = getPackageName(rs.getInt("PACKAGE_NO"));
                String startDate = rs.getString("BOOK_STARTDATE");
                String endDate = rs.getString("BOOK_ENDDATE");
                String status = rs.getString("BOOK_STATUS");

                Booking booking = new Booking(bookingId, packageType, startDate, endDate, status);
                bookings.add(booking);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bookings;
    }

    private String getPackageName(int packageId) {
        String packageName = "";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT PACKAGE_TYPE FROM PACKAGES WHERE PACKAGE_NO = ?")) {

            ps.setInt(1, packageId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    packageName = rs.getString("PACKAGE_TYPE");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return packageName;
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
