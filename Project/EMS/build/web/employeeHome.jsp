
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
        <title>EMS | Employee</title>
    </head>
    <body>
        <nav class="navbar">
            <div class="navdiv">
                <div class="logo"><a href=""></a><b>EMS</b> Employee</div>
                <div class="list">
                    <ul>
                    <li><a href="employeeHome.jsp" class="active">Home</a></li>
                    <li><a href="employeeApplyLeave.jsp">Apply Leave</a></li>
                    <li><a href="employeeMyTeam.jsp">My Team</a></li>
                </ul>
                </div>
                <form action="EmployeeLogoutServlet" method="post">
                        <button onclick="window.location.href = 'employeeLogin.jsp';"><b>Logout</b></button>
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
        color: #F1948A;
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
        color: #F1948A;
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
        background-color: #F1948A;
        color:white;
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
        background-color: #F1948A;
        color: #ffffff;
    }

    .team-table td {
        background-color: #ffffff;
    }
    
    .list{
        margin-left:800px;
        padding-left: 80px;
    }
    
</style>

