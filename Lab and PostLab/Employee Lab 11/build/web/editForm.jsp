<%-- 
    Document   : editForm
    Created on : Dec 21, 2023, 3:03:04 PM
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
        <title>Edit Employee</title>
    </head>
    <body>
        <h1>Edit and view Employee</h1>
        
        <c:set var="id" value="${param.id}"/> 
        <c:set var="name" value="${param.name}"/> 
        <c:set var="salary" value="${param.salary}"/>
        <c:set var="designation" value="${param.designation}"/>
        
        <c:if test="${(id!=null)&&(name!=null)&&(salary!=null)&&(designation!=null)}" var="result">
            <sql:update var="res" dataSource="${myDatasource}"> 
                UPDATE STAFF SET NAME = ?, SALARY = ?, DESIGNATION = ? WHERE ID = ? 
                <sql:param value="${name}"/> 
                <sql:param value="${salary}"/>
                <sql:param value="${designation}"/>
                <sql:param value="${id}"/> 
            </sql:update> 
        </c:if>
        
        <form action="editForm.jsp" method="POST">
            <table border="0" width="2" cellspacing="2" cellpadding="4">
                <tbody>
                    <tr>
                        <td>Id</td>
                        <td>
                            <select name="id"> 
                                <sql:query var="result" dataSource="${myDatasource}">
                                    SELECT ID FROM STAFF
                                </sql:query>
                                <c:forEach var="row" items="${result.rowsByIndex}">
                                    <c:forEach var="column" items="${row}">
                                        <option> <c:out value="${column}"/></option>
                                    </c:forEach>
                                </c:forEach>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name" required/></td>
                    </tr>
                    <tr>
                        <td>Salary:</td>
                        <td><input type="number" name="salary" required/></td>
                    </tr>
                    <tr>
                        <td>Designation:</td>
                        <td><input type="text" name="designation" required/></td>
                    </tr>
                </tbody>
            </table><br>
            <input type="submit" value="Edit Save">
            <input type="reset" value="Reset">   
        </form>
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