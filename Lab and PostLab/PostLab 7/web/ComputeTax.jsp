<%-- 
    Document   : ComputeTax
    Created on : Nov 25, 2023, 10:41:52 PM
    Author     : user
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compute Tax</title>
    </head>
    <body>
        <% double productPrice = Double.parseDouble(
           request.getParameter("productPrice"));
        
           String taxType = request.getParameter("taxType");
           
           double taxPrice = 0.0; int taxPercent = 0;
           if (taxType.equals("Sales"))
           {
               taxPercent = 4;
               taxPrice = 0.04;
           }
           else if (taxType.equals("Good"))
           {
               taxPercent = 6;
               taxPrice = 0.06;
           }
           else if (taxType.equals("Services"))
           {
               taxPercent = 3;
               taxPrice = 0.03;
           }
           
           double calcTax = (productPrice * taxPrice) + productPrice;
        %>
        
        <h3><u>Total Tax Charged</u></h3>   
        Net Amount (excluding tax) &ensp;&ensp;&ensp;<%= productPrice %> <br>
        Tax (<%= taxPercent %>%) &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<%= taxPrice %> <br>
        Gross Amount (including tax) &nbsp;&nbsp; <fmt:formatNumber type="number" maxFractionDigits="2" value="<%= calcTax %>"/><br><br>
        
        <a href="TaxForm.html">
        <button>Go back to Calculate Tax Form</button>
        </a>
    </body>
</html>

<style>
    body
    {
        background-color: #D5DBDB;
    }
    
    button
    {
        background-color: #3498DB;
        border: none;
        color: white;
        padding: 10px 18px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
    }
    
</style>

