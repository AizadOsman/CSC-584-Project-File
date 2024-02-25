<%-- 
    Document   : add_movie
    Created on : Nov 21, 2023, 8:44:52 AM
    Author     : user
--%>

<%@page import="java.util.*"%>
<%@page import="com.movie.model.MovieItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String genre_list = "Action, Comedy, Sci-Fi";
    String [] genres = null;
    genres = genre_list.split(",");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie Library Application: Add Movie Form</title>
    </head>
    <body>
        <%-- Generate main body --%>
        <h1>Add Movie (JSP)</h1>
        <%-- Report any errors (if any) --%>
        <%
            List errorMsgs = (List) request.getAttribute("errorMsgs");
            if (errorMsgs != null) {
        %>
        <p>
            <font color="red">Please correct the following errors:
                <ul>
                    <%
                        Iterator items = errorMsgs.iterator();
                        while ( items.hasNext() ) {
                            String message = (String) items.next();
                    %>
                    <li><%= message %></li>
                    <%
                        }
                    %>
                </ul>
            </font>
        </p>
        <%
            }
        %>
        <form action='add_movie.do' method='POST'>
             <%-- Repopulate the title field --%>
             Title: <input type='text' name='title' value='${param.title}' /><br/><br/>
             <%-- Repopulate the year field --%>
             Year: <input type='text' name='year' value='${param.year}' /><br/><br/>
             <%
                 String genre = request.getParameter("genre");
             %>
             Genre: <select name='genre'>
                 <%
                     for ( int i = 0; i < genres.length; i++ ){
                         String genre_item = genres[i];
                 %>
                 <option value='<%= genre_item %>'
                 <%
                     if ( genre_item.equals(genre) ) {
                         out.print(" selected");
                     }
                 %>
                 ><%= genre_item %></option>
                 <%
                     }
                 %>
             </select>
            or new genre: <input type='text' name='newGenre' value='${param.newGenre}' /><br/><br/>
            <input type='Submit' value='Add Movie'/>
        </form>        
    </body>
</html>
