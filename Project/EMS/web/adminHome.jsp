<%-- 
    Document   : adminHome
    Created on : Dec 25, 2023, 4:40:06 PM
    Author     : user
--%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<sql:setDataSource var="myDatasource"
driver="org.apache.derby.jdbc.ClientDriver"
url="jdbc:derby://localhost:1527/EMS" user="app"
password="app"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="images/icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMS | Admin</title>
    </head>
    <body>
        <nav class="navbar">
            <div class="navdiv">
                <div class="logo"><a href=""></a><b>EMS</b> Admin</div>
                <div class="list">
                <ul>
                    <li><a href="adminHome.jsp" class="active">Home</a></li>
                    <li><a href="adminLeaveRequest.jsp">Leave Request</a></li>
                    <li><a href="adminMyTeam.jsp">My Team</a></li>
                </ul>
                </div>
                <form action="AdminLogoutServlet" method="post">
                        <button onclick="window.location.href = 'adminLogin.jsp';"><b>Logout</b></button>
                    </form>
            </div>
        </nav>
        
        <center>
                <h3><u>Staff List</u></h3>
          
                <sql:query var="result" dataSource="${myDatasource}">
                    SELECT StaffID AS ID, StaffName AS Name, HireDate FROM APP.STAFF 
               </sql:query>
    
                    <table class="team-table" border="1">
                    <!-- column headers -->
                    <tr>
                    <c:forEach var="columnName" items="${result.columnNames}">
                        <th><c:out value="${columnName}"/></th>
                    </c:forEach>
                    </tr>
                    <!-- column data -->
                    <c:forEach var="row" items="${result.rowsByIndex}">
                        <tr>
                        <c:forEach var="column" items="${row}">
                            <td><c:out value="${column}"/></td>
                        </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            
        </center>
        
    </body>
</html>

<style>
    
    .logo{
        color: white;
        font-size: 20px;
    }
    
    body{
       background-color: #DBE1E6;
       margin: 0;
       padding: 0;
       font-family: century gothic;
    }
    
     .navbar{
        background-color: #242526;
        padding-right: 15px;
        padding-left: 15px;
        font-family: Century Gothic;
        height: 60px;
    }
    
    .navdiv{
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    
    li {
        list-style: none;
        display: inline-block;
    }
    
    li  :hover{
        color: #5499C7;
        transition-duration: 0.4s;
    }
    
    li a {
        color: white;
        font-size: 18px;
        font-weight: bold;
        margin-right: 25px;
        text-decoration: none;
    }
    
    .active {
        color: #5499C7;
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
        background-color: #5499C7;
        color:white;
    }
    
    .list{
        margin-left:800px;
        padding-left: 90px;
    }
    
    .team-table {
        width: 80%;
        margin-top: 20px;
        border-collapse: collapse;
    }

    .team-table th, .team-table td {
        padding: 10px;
        text-align: center;
    }

    .team-table th {
        background-color: #566573;
        color: white;
    }

    .team-table td {
        background-color: #ffffff;
    }
    
</style>