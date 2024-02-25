/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.movie.view;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "AddMovieFormServlet", urlPatterns = {"/add_movie.view"})
public class AddMovieFormServlet extends HttpServlet {

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
            out.println("<title>Movie Library Application: Add Movie Form</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Add Movie</h1>");
            out.println("<form action='add_movie.do' method='POST'>");
            out.println("Title: <input type='text' name='title'> <br/><br/>");
            out.println("Year: <input type='text' name='year'> <br/><br/>");
            out.println("Genre: <select name='genre'>");
            out.println("<option value='Sci-Fi'>Sci-Fi</option>");
            out.println("<option value='Action'>Action</option>");
            out.println("<option value='Comedy'>Comedy</option>");
            out.println("<option value='Drama'>Drama</option>");
            out.println("<option value='Horror'>Horror</option>");
            out.println("</select>");
            out.println("or new genre: <input type='text' name='newGenre'> <br/>");
            out.println("<input type='submit'>");
            out.println("</form>");
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
        processRequest(request, response);
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
        List errorMsgs = (List) request.getAttribute("errorMsgs");
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        // Display title field
        String title = request.getParameter("title");
        out.print(" Title: <input type='text' name='title' ");
        if(title == null)
        {
            title = "";
        }
        out.println("value = '" + title + "' /><br/>");
        
        // Display year field
        String year = request.getParameter("year");
        out.print(" Year: <input type='text' name='year' ");
        if(year == null)
        {
            year = "";
        }
        out.println("value = '" + year + "' /><br/>");
        
        // Display genre field
        String genre = request.getParameter("genre");
        String genre_list = "Sci-Fi,Action,Comedy,Drama,Horror";
        String [] genres = null;
        genres = genre_list.split(",");
        // Repopulate the Genre drop-down menu
        out.println(" Genre: <select name='genre'>");
        for(int i=0; i<genres.length; i++)
        {
            out.print("<option value='" + genres[i] + "'");
            if(genre.equals(genres[i]))
            {
                out.print(" selected");
            }
            out.println("> " + genres[i] + "</option>");
        }
        out.println("</select>");
        String newGenre = request.getParameter("newGenre");
        out.println(" or new genre: <input type='text' name='newGenre' ");
        if(newGenre == null)
        {
            newGenre = "";
        }
        out.println("value = '" + newGenre + "' /><br/>");
        
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Movie Library Application: Error Page</title>");
        out.println("</head>");
        out.println("<body bgcolor = 'white'>");
        out.println("<h2>Error Report</h2>");
        out.println("<font color='red'>Please correct the following errors.");
        out.println("<ul>");
        
        Iterator items = errorMsgs.iterator();
        while (items.hasNext())
        {
            String message = (String) items.next();
            out.println("  <li>" + message + "</li>");
        }
        
        out.println("</ul>");
        out.println("Back up and try again");
        out.println("</font>");
        out.println("</body>");
        out.println("</html>");
        out.close();
        processRequest(request,response);
    }
    
    public void init(ServletConfig config)
            throws ServletException {
        String genre_list = "Sci-Fi,Action,Comedy,Drama,Horror";
        String [] genres = null;
        genres = genre_list.split(",");
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
