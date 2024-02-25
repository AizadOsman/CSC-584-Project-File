<%-- 
    Document   : error
    Created on : Dec 21, 2023, 3:25:35 PM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h1>Fail to add employee</h1>
        
        <p>Please recheck and submit the form again.</p>
        
        <p><span style="color:red;"><%=request.getAttribute("errorMsgs") %></span></p>
        
        <br/><a href="empForm.jsp"><button>Back to Employee form</button></a>
        
    </body>
</html>
