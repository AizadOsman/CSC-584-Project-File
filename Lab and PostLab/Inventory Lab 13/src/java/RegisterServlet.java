/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.RegisterBean;
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
        /*try (PrintWriter out = response.getWriter()) {
            //PrintWriter out = response.getWriter();
        
            RegisterBean registerBean = new RegisterBean();
            RegisterDao registerDao = new RegisterDao();


            String registration = registerDao.registerUser(registerBean);

            if(registration.equalsIgnoreCase("SUCCESS"))
            {
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
            else
            {
                request.setAttribute("errMsg", registration);
                request.getRequestDispatcher("registration.jsp").forward(request,response);
            }
        } */
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
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        RegisterBean registerBean = new RegisterBean();
        RegisterDao registerDao = new RegisterDao();
        
        registerBean.setName(name);
        registerBean.setEmail(email);
        registerBean.setUsername(username);
        registerBean.setPassword(password);
        
        String registration = registerDao.registerUser(registerBean);
        
        if(registration.equalsIgnoreCase("SUCCESS"))
        {
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        else
        {
            request.setAttribute("errMsg", registration);
            request.getRequestDispatcher("registration.jsp").forward(request,response);
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
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        RegisterBean registerBean = new RegisterBean();
        RegisterDao registerDao = new RegisterDao();
        
        registerBean.setName(name);
        registerBean.setEmail(email);
        registerBean.setUsername(username);
        registerBean.setPassword(password);
        
        String registration = registerDao.registerUser(registerBean);
        
        if (registration.equalsIgnoreCase("SUCCESS"))
        {
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        else 
        {
            request.setAttribute("errMsg", registration);
            request.getRequestDispatcher("registration.jsp").forward(request, response);
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
