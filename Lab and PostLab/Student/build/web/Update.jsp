<%-- 
    Document   : Update
    Created on : Nov 28, 2023, 4:51:45 PM
    Author     : user
--%>

<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<sql:setDataSource var="myDatasource" 
driver="org.apache.derby.jdbc.ClientDriver" 
url="jdbc:derby://localhost:1527/StudentDB" user="app" 
password="app"/> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>
        <h3>UPDATE STUDENT</h3>
        
        <c:set var="id" value="${param.id}"/> 
        <c:set var="name" value="${param.name}"/> 
        <c:set var="branch" value="${param.branch}"/>
        
        <c:if test="${(id!=null)&&(name!=null)&&(branch!=null)}" var="result">
            <sql:update var="res" dataSource="${myDatasource}"> 
                UPDATE STUDENT SET NAME = ?, BRANCH = ? WHERE ID = ? 
                <sql:param value="${name}"/> 
                <sql:param value="${branch}"/>
                <sql:param value="${id}"/> 
            </sql:update> 
        </c:if>
        
        <form action="Update.jsp" method="POST">
            ID &emsp;&emsp;&emsp;&ensp;&nbsp;
            <select name="id"> 
                <sql:query var="result" dataSource="${myDatasource}">
                    SELECT ID FROM STUDENT
                </sql:query>
                <c:forEach var="row" items="${result.rowsByIndex}">
                    <c:forEach var="column" items="${row}">
                        <option> <c:out value="${column}"/></option>
                    </c:forEach>
                </c:forEach>
            </select> 
            <br/><br/>
            NAME &emsp;&emsp;<input type='text' name='name'> <br/><br/>
            BRANCH &nbsp;&ensp;<input type='text' name='branch'> <br/><br/>
            <input type='submit' value='Update'>
        </form>
                <br/>
                <sql:query var="result" dataSource="${myDatasource}">
                    SELECT * FROM APP.STUDENT
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
                    <br/><a href="index.jsp"><button><b>Return to main page</b></button></a>
        
    </body> 
</html>

<style>
    body
    {
        background-color: #AED6F1;
        font-family: century gothic;
    }
        
    
    input[type=submit]
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
     
     button:hover,
     input[type=submit]:hover
     {
         background-color: #808B96;
         color: white;
     }
     
     button
    {
        background-color: #008CBA;
        border: none;
        color: white;
        padding: 10px 18px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
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
 
</style>
