/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Register;
import dao.RegisterDao;

/**
 *
 * @author user
 */
public class RegisterServlet extends HttpServlet {

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
        processRequest(request, response);
        
        PrintWriter out = response.getWriter();
        
        String cust_fname = request.getParameter("cust_fname");
        String cust_lname = request.getParameter("cust_lname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Register register = new Register();
        RegisterDao registerDao = new RegisterDao();
        
        register.setCust_fname(cust_fname);
        register.setCust_lname(cust_lname);
        register.setUsername(username);
        register.setPassword(password);
        
        String registration = registerDao.registerUser(register);
        
        if(registration.equalsIgnoreCase("SUCCESS"))
        {
            request.getRequestDispatcher("loginPage.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("errMsg", registration);
            request.getRequestDispatcher("SignUpPage.jsp").forward(request, response);
        }
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
        
        PrintWriter out = response.getWriter();
        
        String cust_fname = request.getParameter("cust_fname");
        String cust_lname = request.getParameter("cust_lname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Register register = new Register();
        RegisterDao registerDao = new RegisterDao();
        
        register.setCust_fname(cust_fname);
        register.setCust_lname(cust_lname);
        register.setUsername(username);
        register.setPassword(password);
        
        String registration = registerDao.registerUser(register);
        
        if(registration.equalsIgnoreCase("SUCCESS"))
        {
            request.getRequestDispatcher("loginPage.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("errMsg", registration);
            request.getRequestDispatcher("SignUpPage.jsp").forward(request, response);
        }
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
