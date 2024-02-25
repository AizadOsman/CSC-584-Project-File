<%-- 
    Document   : packageDB
    Created on : Jan 12, 2024, 11:55:45 PM
    Author     : user
--%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<sql:setDataSource var="myDatasource" 
driver="org.apache.derby.jdbc.ClientDriver" 
url="jdbc:derby://localhost:1527/Destinify" 
user="app" 
password="app"/>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="images/D.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Package Database</title>
    </head>
    <body>
        <nav class="navbar">
        <div class="navdiv">
            <div class="logo"><a href=""></a>Destinify DB</div>
            <ul>
                <li>
                    <button onclick="window.location.href = 'mainPage.jsp';"><b>Back to Home</b></button>
                </li>
            </ul>
        </div>
    </nav>
        
        
        <div class="table">
            <h3>List of Package Offered</h3>


            <sql:query var="result" dataSource="${myDatasource}">
                        SELECT * FROM APP.PACKAGES
                    </sql:query>



            <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result.columnNames}">
                    <th><c:out value="${columnName}" /></th>
                </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}" /></td>
                    </c:forEach>
                </tr>
            </c:forEach>
            </table>
        </div>
        
    </body>
</html>

<style>
     body {
            font-family: Century Gothic;
            background-image: url('images/db_background.png');
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #242526;
            padding-right: 15px;
            padding-left: 15px;
        }

        .navdiv {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            font-size: 35px;
            font-weight: bold;
            color: #f4f4f4;
        }

        li {
            list-style: none;
            display: inline-block;
        }

        li :hover {
            transition-duration: 0.4s;
        }

        li a {
            color: white;
            font-size: 18px;
            font-weight: bold;
            margin-right: 25px;
            text-decoration: none;
        }

        button{
        border-radius: 25px;
        padding: 10px 10px 10px 10px;
        background-color: #ABB2B9;
        color: #566573;
        cursor: pointer;
        transition-duration: 0.4s;
    }
    
    button:hover{
        background-color: #28B463;
        color:white;
    }
    
    .table {
        background-color: #f4f4f4;
        margin-right: 20px;
        margin-left: 20px;
        padding: 20px;
        padding-top: 5px;
        margin-top: 20px;
        border-radius: 12px;
        width: 600px;
    }
    
     td,th 
    {
        border: 1px solid #ddd;
        padding: 8px;
    }
    
    th 
    {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #566573;
        color: white;
    }
    
    tr
    {
        background-color: white;
    }
    
</style>
