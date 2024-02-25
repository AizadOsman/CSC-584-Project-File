<%-- 
    Document   : empForm
    Created on : Dec 21, 2023, 2:55:26 PM
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
        <title>Add Employee</title>
    </head>
    <body>
        <h1>Add New Employee</h1>
        
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
                        
        <form action="emp.controller" action="empForm.jsp" method="POST">
            <table border="0" width="2" cellspacing="2" cellpadding="4">
                <tbody>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name"/></td>
                    </tr>
                    <tr>
                        <td>Salary:</td>
                        <td><input type="number" name="salary" value="0"/></td>
                    </tr>
                    <tr>
                        <td>Designation:</td>
                        <td><input type="text" name="designation"/></td>
                    </tr>
                </tbody>
            </table><br>
            <input type="submit" value="Save"> 
            <input type="reset" value="Reset">   
        </form>
        <br/><a href="index.html"><button>Return to home page</button></a>
    </body>
</html>
