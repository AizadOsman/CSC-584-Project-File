<%-- 
    Document   : success
    Created on : Dec 21, 2023, 3:25:24 PM
    Author     : user
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource var = "myDatasource" driver = "org.apache.derby.jdbc.ClientDriver" 
                   url = "jdbc:derby://localhost:1527/emp" user = "app"  password = "app"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee success</title>
    </head>
    <body>
        <h1>Add Employee Success</h1>
        
        <c:set var="name" value="${param.name}"/> 
        <c:set var="salary" value="${param.salary}"/>
        <c:set var="designation" value="${param.designation}"/>
        
        <c:if test="${(name!=null)&&(salary!=null)&&(designation!=null)}" var="result">
            <sql:update var="result" dataSource="${myDatasource}">
                INSERT INTO APP.STAFF ("NAME", SALARY, DESIGNATION) VALUES (?, ?, ?)
                <sql:param value="${name}"/> 
                <sql:param value="${salary}"/> 
                <sql:param value="${designation}"/>
            </sql:update>
        </c:if>
        
        <p>You have add the following employee details:</p>
        <p>
            Name: <b><%=request.getAttribute("name") %></b>
        </p>
        <p>
            Salary: <b><%= request.getAttribute("salary") %></b>
        </p>
        <p>
            Designation: <b><%= request.getAttribute("designation") %></b>
        </p>
        <br/>
                <sql:query var="result" dataSource="${myDatasource}">
                    SELECT * FROM STAFF
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
                    <br/><a href="index.html"><button>Return to home page</button></a>
        
    </body>
</html>
