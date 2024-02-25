<%-- 
    Document   : packagePage
    Created on : Jan 7, 2024, 2:02:11 PM
    Author     : ASUS
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" href="images/D.png">
    <title>Package</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>
<body>

    <nav class="navbar">
        <div class="navdiv">
            <div class="logo"><a href=""></a>Destinify</div>
            <ul>
                <li><a href="mainPage.jsp">Home</a></li>
                <li><a href="packagePage.jsp" class="active">Package</a></li>
                <li><a href="bookingPage.jsp">Booking</a></li>
                <li><a href="editPage.jsp">Edit Booking</a></li>
                <li><a href="cancelBookPage.jsp">Cancel Booking</a></li>
                <li>
                    <form action="LogoutServlet" method="post">
                        <button class="navBtn" onclick="window.location.href = 'loginPage.jsp';"><b>Logout</b></button>
                    </form>
                </li>
                
            </ul>
        </div>
    </nav>

    <center>
        <h2>&nbsp;Survey our offer packages</h2>

        <div class="package">
            <img src="images/standard.png" alt="standard" width="300px" height="" align="" style="float:left;padding-right:50px;">
            <p><h3>Standard Package</h3></p>
            <p>4 Star hotel accommodation (with meals)</p>
            <p>Flight Ticket (Domestic International)</p>
            <p>Provide comprehensive itinerary of trip</p>
            <p>Transport availability</p>
            <p>Visa Assistance</p>
            <p>Price : <b>RM 1500</b></p>
            <button class="packageBtn" onclick="window.location.href ='bookingPage.jsp';"><b>Book Now</b></button>
        </div>

        <div class="package">
            <img src="images/gold.png" alt="gold" width="300px" height="auto" align="" style="float:left;padding-right:50px;">
            <p><h3>Gold Package</h3></p>
            <p>5 Star hotel accommodation (with meals)</p>
            <p>Flight Ticket (Domestic International)</p>
            <p>Transport availability</p>
            <p>Visa Assistance and Travel Insurance</p>
            <p>Foreign Exchange facility</p>
            <p>Price : <b>RM 2500</b></p>
            <button class="packageBtn" onclick="window.location.href ='bookingPage.jsp';"><b>Book Now</b></button>
        </div>

        <div class="package">
            <img src="images/platinum.png" alt="platinum" width="300px" height="auto" align="" style="float:left;padding-right:50px;">
            <p><h3>Platinum Package</h3></p>
            <p>4 Star hotel accommodation (with meals))</p>
            <p>Flight Ticket (Domestic International)</p>
            <p>Transport availability</p>
            <p>Visa Assistance and Travel Insurance</p>
            <p>Customized meetings/conferences/events</p>
            <p>Price : <b>RM 4000</b></p>
            <button class="packageBtn" onclick="window.location.href ='bookingPage.jsp';"><b>Book Now</b></button>
        </div>
    </center>

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

        .navBtn {
            background-color: #E21F3F;
            border-radius: 20px;
            color: white;
            padding: 10px 18px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            transition-duration: 0.4s;
        }

        .navBtn:hover {
            background-color: white;
            color: #E21F3F;
        }

        .active {
            color: #45B39D;
        }

        .package {
            border: 5px solid #ddd;
            width: 700px;
            border-radius: 10px;
            margin-bottom: 20px;
            padding-right: 50px;
            overflow: hidden;
            background-color: white;
        }

        .packageBtn {
            color: white;
            background-color: #52BE80;
            border-radius: 5px;
            border: none;
            width: 13.5em;
            height: 1.5em;
            cursor: pointer;
            transition-duration: 0.4s;
        }

        .packageBtn:hover {
            background-color: #808B96;
            color: white;
        }
    </style>