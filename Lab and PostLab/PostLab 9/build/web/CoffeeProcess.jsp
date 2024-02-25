<%-- 
    Document   : CoffeeProcess
    Created on : Dec 7, 2023, 11:12:23 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coffee Process</title>
    </head>
    <body>
        
        <h1>Customer Order</h1>
        
        <jsp:useBean id="CoffeeBean" class="CoffeeBean.CoffeeBean" scope="request">
            <jsp:setProperty name="CoffeeBean" property="typeCoffee" value="${param.typeCoffee}"/>
            <jsp:setProperty name="CoffeeBean" property="numSugar" value="${param.numSugar}"/>
            <jsp:setProperty name="CoffeeBean" property="price" value="${param.price}"/>
        </jsp:useBean> 
        
        <p>Type of Coffee: &ensp;&ensp;&nbsp;&ensp;&ensp;
            <jsp:getProperty name="CoffeeBean" property="typeCoffee"/>
        </p>
        <p>Number of Sugar: &ensp;&ensp;
            <jsp:getProperty name="CoffeeBean" property="numSugar"/> spoon
        </p>
        <p>Price: &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&nbsp;&nbsp;RM
            <jsp:getProperty name="CoffeeBean" property="price"/>
        </p>
        <br/>
        <a href="CoffeeOrder.html"><button>Return to Coffee Order</button></a>
        
    </body>
</html>

<style>
    
    h1{
        font-family: Century Gothic;
        color: #FFC966;
        text-emphasis: '*';
    }
    
    body{
        background-color: #47250B;
    }
    
    p{
        font-family: arial;
        color: white;
        font-weight: bold; 
    }
    
    button{
        background-color: #D79D57;
        border: none;
        color: #17202A;
        padding: 10px 18px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
        font-weight: bold; 
    }
    
</style>