<%-- 
    Document   : selectData
    Created on : Nov 29, 2023, 11:06:42 PM
    Author     : user
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource var = "myDatasource" driver = "org.apache.derby.jdbc.ClientDriver" 
                   url = "jdbc:derby://localhost:1527/dvdlibrary" user = "root"  password = "root"/>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DVD Library</title>
    </head>
    <body>
        <h1>&emsp;&emsp;&emsp;&emsp;&emsp;DVD Library</h1>
         <sql:query var="result" dataSource="${myDatasource}">
            SELECT id,title,"year",genre FROM ROOT.ITEM
        </sql:query>
    
        <table border="1">
            <!-- column headers -->
            <tr>
                <th>Number</th>
                <th>Title</th>
                <th>Year</th>
                <th>Genre</th>
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
    </body>
</html>

<style>
    body{
        background-color: #F9E79F;
        font-family: century gothic;
    }
    
    h1{
        font-family: century gothic;
    }
    td,th{
        border: 1px solid #ddd;
        padding: 8px;
    }
    
    th{
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #E59866;
        color: white;
    }
    
    tr{
        background-color: white;
    }
    
</style>

