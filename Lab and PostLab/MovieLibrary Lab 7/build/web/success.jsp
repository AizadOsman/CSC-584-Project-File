<%-- 
    Document   : success
    Created on : Nov 21, 2023, 8:29:26 AM
    Author     : user
--%>

<jps:useBean id="movieItem" scope="request" type="com.movie.model.MovieItem"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie Library Application: Add Movie Success</title>
    </head>
    <body>
        <h1>Add Movie Success (JSP)</h1>
        
        
        You have add the following Movie: </br>
        Title : <jsp:getProperty name="movieItem" property="title"/> </br>
        Year Released : <jsp:getProperty name="movieItem" property="year"/> </br>
        Genre of film : <jsp:getProperty name="movieItem" property="genre"/> </br>
        
        <br/><a href ="index.html">Home</a>
    </body>
</html>
