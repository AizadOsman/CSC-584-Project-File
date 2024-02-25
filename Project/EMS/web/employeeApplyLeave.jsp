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
                    <li><a href="employeeHome.jsp">Home</a></li>
                    <li><a href="employeeApplyLeave.jsp" class="active">Apply Leave</a></li>
                    <li><a href="employeeMyTeam.jsp">My Team</a></li>
                </ul>
                </div>
                <form action="EmployeeLogoutServlet" method="post">
                        <button onclick="window.location.href = 'employeeLogin.jsp';"><b>Logout</b></button>
                    </form>
            </div>
        </nav>
        
        <div class="leave-form">
        <h2>Apply for Leave</h2>
        
        <c:choose>
                <c:when test="${not empty param.startDate and not empty param.endDate and not empty param.reason}">
                    <sql:update var="result" dataSource="${myDatasource}">
                        INSERT INTO APP.Leave_Registration (StartDate, EndDate, Reason, Status, StaffID)
                        VALUES (?, ?, ?, 'Pending', ?)
                        <sql:param value="${param.startDate}" />
                        <sql:param value="${param.endDate}" />
                        <sql:param value="${param.reason}" />
                        <sql:param value="${param.StaffID}" /> 
                    </sql:update>

                    <c:if test="${result >= 0}">
                        <p style="color: green;">Leave application successful! Your request has been submitted.</p>
                    </c:if>
                </c:when>
                <c:otherwise>
                    <p>Please fill in all the required details and submit the form.</p>
                </c:otherwise>
            </c:choose>
        
        <form action="employeeApplyLeave.jsp" method="post">
            
            <label for="StaffID">Select Staff ID:</label>
            <select name="StaffID"> 
                <sql:query var="result" dataSource="${myDatasource}">
                    SELECT STAFFID FROM STAFF
                </sql:query>
                <c:forEach var="row" items="${result.rowsByIndex}">
                    <c:forEach var="column" items="${row}">
                        <option> <c:out value="${column}"/></option>
                    </c:forEach>
                </c:forEach>
            </select> 
            <br><br>
            
            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" value="${startDate}" required><br><br>

            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" value="${endDate}" required><br><br>

            <label for="reason">Reason:</label>
            <textarea id="reason" name="reason" rows="1" value="${reason}" required></textarea><br><br>

            <button type="submit">Submit</button>
        </form>
    </div>
        
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
    
    .leave-form {
        margin: 20px;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .leave-form h2 {
        color: #333333;
    }

    .leave-form label {
        display: block;
        margin-bottom: 5px;
    }

    .leave-form input,
    .leave-form textarea {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        box-sizing: border-box;
    }

    .leave-form button {
        background-color: #45B39D;
        color: #ffffff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-family: century gothic;
        font-weight: bold;
    }

    .leave-form button:hover {
        background-color: #2980b9;
    }
    
    .list{
        margin-left:800px;
        padding-left: 80px;
    }
    
</style>


