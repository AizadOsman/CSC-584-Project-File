<%-- 
    Document   : Insert
    Created on : Nov 28, 2023, 4:51:32 PM
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
        <title>Insert Page</title>
    </head>
    <body>
        <h3>ADD NEW STUDENT</h3>
        
        <c:set var="id" value="${param.id}"/> 
        <c:set var="name" value="${param.name}"/> 
        <c:set var="branch" value="${param.branch}"/>
        
        <c:if test="${(id!=null)&&(name!=null)&&(branch!=null)}" var="result">
            <sql:update var="result" dataSource="${myDatasource}">
                INSERT INTO STUDENT VALUES (?,?,?)
                <sql:param value="${id}"/> 
                <sql:param value="${name}"/> 
                <sql:param value="${branch}"/>
            </sql:update>
        </c:if>
        
        <form action="Insert.jsp" method="POST">
            ID &emsp;&emsp;&emsp;&emsp;<input type='text' name='id'> <br/><br/>
            NAME &emsp;&emsp;<input type='text' name='name'> <br/><br/>
            BRANCH &nbsp;&ensp;<input type='text' name='branch'> <br/><br/>
            <input type='submit'>
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
      background-color: #45B39D;
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