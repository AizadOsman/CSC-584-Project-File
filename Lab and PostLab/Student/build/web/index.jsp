<%-- 
    Document   : index
    Created on : Nov 28, 2023, 4:49:24 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>STUDENT INFORMATION SYSTEM</h1> <br/>
        <button onclick="window.location.href = 'Insert.jsp';"><b>ADD NEW STUDENT</b></button> <br/><br/>
        <button onclick="window.location.href = 'Update.jsp';"><b>UPDATE STUDENT</b></button> <br/><br/>
        <button onclick="window.location.href = 'Delete.jsp';"><b>DELETE STUDENT</b></button> <br/>
    </body>
</html>

<style>
    body
    {
        background-color: #AED6F1;
        
    }
    
    h1
    {
        font-family: century gothic;
    }
    
    button
    {
        background-color: #008CBA;
        border: none;
        color: white;
        padding: 10px 18px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
    }
    
    button:hover 
    {
        background-color: #808B96;
        color: white;
    }
</style>