<%-- 
    Document   : adminMyTeam
    Created on : Dec 25, 2023, 5:23:51 PM
    Author     : user
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var = "myDatasource" driver = "org.apache.derby.jdbc.ClientDriver" 
                   url = "jdbc:derby://localhost:1527/EMS" 
                   user = "app"  password = "app"/>
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
                    <li><a href="adminHome.jsp">Home</a></li>
                    <li><a href="adminLeaveRequest.jsp" >Leave Request</a></li>
                    <li><a href="adminMyTeam.jsp" class="active">My Team</a></li>
                </ul>
                </div>
                <form action="AdminLogoutServlet" method="post">
                        <button onclick="window.location.href = 'adminLogin.jsp';"><b>Logout</b></button>
                    </form>
            </div>
        </nav>
        
    <center>
        
       <h3><u>Add New Staff</u></h3>
                    
        <c:set var="STAFFNAME" value="${param.STAFFNAME}"/> 
        <c:set var="HIREDATE" value="${param.HIREDATE}"/> 
        <c:set var="LR_NO" value="${param.LR_NO}"/>
        <c:set var="USERNAME" value="${param.USERNAME}"/>
        <c:set var="PASSWORD" value="${param.PASSWORD}"/>
        
        <c:if test="${(STAFFNAME!=null)&&(HIREDATE!=null)&&(LR_NO!=null)&&(USERNAME!=null)&&(PASSWORD!=null)}" var="result">
            <sql:update var="result" dataSource="${myDatasource}">
                INSERT INTO APP.STAFF (STAFFNAME, HIREDATE, LR_NO, USERNAME, PASSWORD)
                        VALUES (?, ?, ?, ?, ?)
                <sql:param value="${STAFFNAME}"/> 
                <sql:param value="${HIREDATE}"/> 
                <sql:param value="${LR_NO}"/>
                <sql:param value="${USERNAME}"/>
                <sql:param value="${PASSWORD}"/>
            </sql:update>
        </c:if> 
                        
                        <form action="adminMyTeam.jsp" method="post">
                            <label for="STAFFNAME">Staff Name:</label>
                            <input type="text" id="STAFFNAME" name="STAFFNAME" value="${STAFFNAME}" required><br><br>
                            
                            <label for="HIREDATE">Hire Date:</label>
                            <input type="date" id="HIREDATE" name="HIREDATE" value="${HIREDATE}" required><br><br>
                            
                            <label for="LR_NO">Leave No:</label>
                            <input type="number" id="LR_NO" name="LR_NO" value="${LR_NO}" required><br><br>
                            
                            <label for="USERNAME">Username:</label>
                            <input type="text" id="USERNAME" name="USERNAME" value="${USERNAME}" required><br><br>
                            
                            <label for="PASSWORD">Password:</label>
                            <input type="text" id="PASSWORD" name="PASSWORD" value="${PASSWORD}" required><br><br>
                            
                            <input class="submit" type='submit'>
                        </form>
                <br/>
                <sql:query var="result" dataSource="${myDatasource}">
                    SELECT * FROM APP.STAFF
                </sql:query>
                    
                <table border="1">
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
                    <br>    
                    
                 <h3><u>Delete Staff</u></h3>
                    
                    <c:set var="STAFFID" value="${param.STAFFID}"/> 
        <c:if test="${(STAFFID != null) && (id != 'select') }"> 
            <sql:update var="res" dataSource="${myDatasource}"> 
                DELETE FROM APP.STAFF WHERE STAFFID = ? 
                <sql:param value="${STAFFID}"/> 
            </sql:update> 
        </c:if>
                <form action="adminMyTeam.jsp" method="POST">
            ID
            <select name="STAFFID"> 
                <sql:query var="result" dataSource="${myDatasource}">
                    SELECT STAFFID FROM APP.STAFF
                </sql:query>
                <c:forEach var="row" items="${result.rowsByIndex}">
                    <c:forEach var="column" items="${row}">
                        <option> <c:out value="${column}"/></option>
                    </c:forEach>
                </c:forEach>
            </select> 
            <br/><br/>
            <input class="delete" type='submit' value='Delete'>
        </form>
                
                <h5>Please refresh the page once you have delete the employee.</h5>
                    
                    
        <h3><u>Leave Request History</u></h3>
        <sql:query var="result" dataSource="${myDatasource}">
            SELECT STAFFID, REASON, STARTDATE, ENDDATE, STATUS FROM APP.LEAVE_REGISTRATION WHERE Status != 'Pending'
        </sql:query>
            <table border="1">
                <tr>
                <th>Staff ID</th>
                <th>Reason</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Status</th>
                </tr>
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
        margin-right: 20px;
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
    
    .submit
    {
      background-color: #45B39D;
      border: none;
      color: white;
      padding: 10px 18px;
      text-decoration: none;
      margin: 4px 2px;
      cursor: pointer;
      font-weight: bold;
      transition-duration: 0.4s;
     }
     
     .submit:hover
     {
        color: #229954;
        background-color: #D5F5E3;
     }
    
     .delete{
        background-color:#EC7063 ;
        color: white;
        font-family: century gothic;
        font-weight: bold;
        border: none;
        transition-duration: 0.4s;
        margin: 4px 2px;
        cursor: pointer;
        padding: 10px 18px;
    }
    .delete:hover{
        color: #A93226;
        background-color: #F5B7B1;
    }
    
</style>