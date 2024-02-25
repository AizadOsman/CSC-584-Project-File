<%-- 
    Document   : mainPage
    Created on : Jan 7, 2024, 1:59:05 PM
    Author     : ASUS
--%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<sql:setDataSource var="myDatasource" 
driver="org.apache.derby.jdbc.ClientDriver" 
url="jdbc:derby://localhost:1527/Destinify" 
user="app" 
password="app"/>

<html>
<head>
    <link rel="icon" href="images/D.png">
    <title>Home</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>
<body>

    <nav class="navbar">
        <div class="navdiv">
            <div class="logo"><a href=""></a>Destinify</div>
            <ul>
                <li><a href="mainPage.jsp" class="active">Home</a></li>
                <li><a href="packagePage.jsp">Package</a></li>
                <li><a href="bookingPage.jsp">Booking</a></li>
                <li><a href="editPage.jsp">Edit Booking</a></li>
                <li><a href="cancelBookPage.jsp">Cancel Booking</a></li>
                <li>
                    <form action="LogoutServlet" method="post">
                    <button onclick="window.location.href = 'loginPage.jsp';"><b>Logout</b></button>
                    </form>
                </li>
            </ul>
        </div>
    </nav>
    
    <h2>&nbsp;&nbsp;&nbsp;Hi, <i><%= request.getSession().getAttribute("username") %></i>! Welcome </h2> 
    
    <h4>&emsp;&emsp;<u>System Dashboard</u></h4>
    <!-- Dashboard Section -->
    <div class="dashboard">
        <div class="dashboard-item">
            <img src="images/user.png" alt="user" width="90px" height="auto" align="" style="float:left;padding-right:50px;">
            <h4>Total User Registered</h4>
            <sql:query var="bookingCount" dataSource="${myDatasource}">
                SELECT COUNT(*) AS count FROM APP.CUSTOMER
            </sql:query>
            <c:forEach var="row" items="${bookingCount.rows}">
                <p>${row.count}</p>
            </c:forEach>
                <a class="link" href="userDB.jsp">View Data</a>
        </div>
        
        <div class="dashboard-item">
            <img src="images/booking.png" alt="booking" width="90px" height="auto" align="" style="float:left;padding-right:50px;">
            <h4>Total Bookings Made</h4>
            <sql:query var="bookingCount" dataSource="${myDatasource}">
                SELECT COUNT(*) AS count FROM APP.BOOKING
            </sql:query>
            <c:forEach var="row" items="${bookingCount.rows}">
                <p>${row.count}</p>
            </c:forEach>
                <a class="link" href="bookingDB.jsp">View Data</a>
        </div>

        <div class="dashboard-item">
            <img src="images/package.png" alt="package" width="90px" height="auto" align="" style="float:left;padding-right:50px;">
            <h4>Total Packages Offered</h4>
            <sql:query var="packageCount" dataSource="${myDatasource}">
                SELECT COUNT(*) AS count FROM APP.PACKAGES
            </sql:query>
            <c:forEach var="row" items="${packageCount.rows}">
                <p>${row.count}</p>
            </c:forEach>
                <a class="link" href="packageDB.jsp">View Data</a>
        </div>        
    </div>
    
</body>
</html>

<style>
        body {
            font-family: Century Gothic;
            background-color: #f4f4f4;
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
            color: #28B463;
        }

        li {
            list-style: none;
            display: inline-block;
        }

        li :hover {
            color: #45B39D;
            transition-duration: 0.4s;
        }

        li a {
            color: white;
            font-size: 18px;
            font-weight: bold;
            margin-right: 25px;
            text-decoration: none;
        }

        button {
            background-color: #E21F3F;
            border-radius: 20px;
            color: white;
            padding: 10px 18px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            transition-duration: 0.4s;
        }

        button:hover {
            background-color: white;
            color: #E21F3F;
        }

        .active {
            color: #45B39D;
        }

        /* Dashboard Styles */
        .dashboard {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .dashboard-item {
            text-align: center;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 12px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 0 10px;
            width: 400px;
            height: 100px;
        }

        .dashboard h3 {
            text-align: center;
            color: #28B463;
            margin-bottom: 20px;
        }

        .dashboard-item h4 {
            color: #333;
            margin-top: -5px;
        }

        .dashboard-item p {
            font-size: 24px;
            color: #E21F3F;
            margin-top: 10px;
        }
        
        .link{
            color: #45B39D;
            text-decoration: none;
            font-weight: bold;
        }
        
        .link:hover{
            color: #808B96;
        }
        
    </style>