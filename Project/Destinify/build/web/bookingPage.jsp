<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<sql:setDataSource var="myDatasource"
    driver="org.apache.derby.jdbc.ClientDriver"
    url="jdbc:derby://localhost:1527/Destinify"
    user="app"
    password="app" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="icon" href="images/D.png">
    <title>Booking</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <nav class="navbar">
        <div class="navdiv">
            <div class="logo"><a href=""></a>Destinify</div>
            <ul>
                <li><a href="mainPage.jsp">Home</a></li>
                <li><a href="packagePage.jsp">Package</a></li>
                <li><a href="bookingPage.jsp" class="active">Booking</a></li>
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

    

    <c:set var="book_startdate" value="${param.book_startdate}" />
    <c:set var="book_enddate" value="${param.book_enddate}" />

    <c:if test="${(book_startdate != null) && (book_enddate != null)}" var="result">
        <sql:update var="res" dataSource="${myDatasource}">
            INSERT INTO APP.BOOKING (BOOK_STARTDATE, BOOK_ENDDATE, PACKAGE_NO, CUST_NO, BOOK_STATUS)
            VALUES (?, ?, ?, ?, 'Pending')
            <sql:param value="${book_startdate}" />
            <sql:param value="${book_enddate}" />
            <sql:param value="${param.package_no}" />
            <sql:param value="${session.getAttribute('cust_no')}" />
        </sql:update>

        <c:choose>
            <c:when test="${res > 0}">
                <div style="color: green;">Booking successfully added!</div>
            </c:when>
            <c:otherwise>
                <div style="color: red;">Failed to add booking. Please try again.</div>
            </c:otherwise>
        </c:choose>
    </c:if>
                
                
                
        <div class="form">
            <h1>Add Booking Details</h1>
                    <form action="bookingPage.jsp" method="post">
                <br>Start Date: <input type="date" name="book_startdate" value="${book_startdate}" /><br/><br/>
                End Date: <input type="date" name="book_enddate" value="${book_enddate}" /><br/><br/>

                <!-- Dropdown list for selecting the package -->
                Package:
                <select name="package_no">
                    <sql:query var="packageResult" dataSource="${myDatasource}">
                        SELECT PACKAGE_NO, PACKAGE_TYPE FROM PACKAGES
                    </sql:query>
                    <c:forEach var="packageRow" items="${packageResult.rowsByIndex}">
                        <option value="${packageRow[0]}">${packageRow[1]}</option>
                    </c:forEach>
                </select><br/><br/>

                <input type="submit" value="Book" />
                <input type="Reset" value="Reset" /><br/><br/>
            </form>
        </div>
                
        <div class="table">
            <sql:query var="result" dataSource="${myDatasource}">
                SELECT B.BOOK_ID, B.BOOK_STARTDATE, B.BOOK_ENDDATE, P.PACKAGE_TYPE
                FROM APP.BOOKING B
                JOIN APP.PACKAGES P ON B.PACKAGE_NO = P.PACKAGE_NO
            </sql:query>
                
                
            <center>
                <h3>List of Success Booking</h3>
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
            </center>
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
    
    .form{
        background-color: white;
        margin-right: 20px;
        margin-left: 50px;
        padding: 20px;
        padding-top: 5px;
        margin-top: 50px;
        border-radius: 12px;
        width: 600px;
        display: inline-block;
        text-align: center;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
    .table{
        background-color: white;
        margin-right: 50px;
        margin-left: 20px;
        padding: 20px;
        padding-top: 5px;
        margin-top: 50px;
        border-radius: 12px;
        width: 600px;
        text-align: center;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        display: inline-block;
        float: right;
        
    }
    
    input[type=submit]
    {
      background-color: #45B39D;
      border: none;
      color: white;
      padding: 10px 18px;
      text-decoration: none;
      margin: 4px 2px;
      cursor: pointer;
      font-weight: bold;
     }
     
     input[type=reset]
    {
      background-color: #F5B041;
      border: none;
      color: white;
      padding: 10px 18px;
      text-decoration: none;
      margin: 4px 2px;
      cursor: pointer;
      font-weight: bold;
     }
     
     input[type=reset]:hover,
     input[type=submit]:hover
     {
         background-color: #808B96;
         color: white;
         transition-duration: 0.4s;
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
        background-color: #45B39D;
        color: white;
    }
    
    tr
    {
        background-color: white;
    }

</style>
