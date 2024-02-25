<%-- 
    Document   : form
    Created on : Dec 12, 2023, 8:48:56 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator EJB</title>
    </head>
    <body>
        <h1>Basic Operations</h1>
        <hr>
        <form action="result.jsp" method="POST">
            <p>Enter the first value:
                <input type="text" name="num1" size="25"></p>
            <br>
            <p>Enter the second value:
                <input type="text" name="num2" size="25"></p>
            <br>
            <b>Select your choice:</b><br>
            <input type="radio" name="group1" value="add">Addition<br>
            <input type="radio" name="group1" value="sub">Subtraction<br>
            <input type="radio" name="group1" value="multi">Multiply<br>
            <input type="radio" name="group1" value="div">Division<br>
            <p>
                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
            </p>
        </form>
    </body>
</html>
