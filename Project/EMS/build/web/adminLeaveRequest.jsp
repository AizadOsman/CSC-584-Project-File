<%-- 
    Document   : adminLeaveRequest
    Created on : Dec 25, 2023, 5:21:43 PM
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
                    <li><a href="adminHome.jsp">Home</a></li>
                    <li><a href="adminLeaveRequest.jsp" class="active">Leave Request</a></li>
                    <li><a href="adminMyTeam.jsp">My Team</a></li>
                </ul>
                </div>
                <form action="AdminLogoutServlet" method="post">
                        <button onclick="window.location.href = 'adminLogin.jsp';"><b>Logout</b></button>
                    </form>
            </div>
        </nav>
        
        <sql:query var="result" dataSource="${myDatasource}">
  SELECT STAFFID, REASON, STARTDATE, ENDDATE, STATUS, LR_NO
  FROM APP.LEAVE_REGISTRATION WHERE Status = 'Pending'
</sql:query>
  
    <center>
        
        <h3><u>List of Leave Request</u></h3>
        <table border="1">
  <tr>
    <th>Staff ID</th>
    <th>Reason</th>
    <th>Start Date</th>
    <th>End Date</th>
    <th>Status</th>
    <th>Action</th>
  </tr>
  <c:forEach var="row" items="${result.rows}">
    <tr>
      <td>${row.STAFFID}</td>
      <td>${row.REASON}</td>
      <td>${row.STARTDATE}</td>
      <td>${row.ENDDATE}</td>
      <td>${row.STATUS}</td>
      <td>
        <form action="adminLeaveRequest.jsp" method="post">
          <input type="hidden" name="leaveId" value="${row.LR_NO}">
          <button type="submit" class="approve" name="action" value="Approved">Approve</button>
          <button type="submit" class="reject" name="action" value="Rejected">Reject</button>
        </form>
      </td>
    </tr>
  </c:forEach>
</table>
        
    </center>

<c:if test="${not empty param.action}">
  <sql:update var="updateResult" dataSource="${myDatasource}">
    UPDATE APP.LEAVE_REGISTRATION SET Status = ? WHERE LR_NO = ?
    <sql:param value="${param.action}" />
    <sql:param value="${param.leaveId}" />
  </sql:update>

  <c:if test="${updateResult >= 0}">
    <p style="color:green;">Leave request ${param.action} successfully!</p>
  </c:if>
</c:if>
    
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
    
    
    .approve{
        background-color:#45B39D ;
        color: white;
        font-family: century gothic;
        font-weight: bold;
    }
    .approve:hover{
        color: #229954;
        background-color: #D5F5E3;
    }
    
    .reject{
        background-color:#EC7063 ;
        color: white;
        font-family: century gothic;
        font-weight: bold;
    }
    .reject:hover{
        color: #A93226;
        background-color: #F5B7B1;
    }
    
</style>
