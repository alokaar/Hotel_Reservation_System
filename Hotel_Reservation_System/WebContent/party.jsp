<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html>
<jsp:include page="Header.jsp" />
<head>
<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="css/ppstyle.css">
</head>
<body>
<body>
    <div class="container">
    <h1> Let's Have a fun </h1>
    <form action="wedding.java" method="post"></form>
      <section class="booking-options">
        <div class="booking-option">
            <img src="images/pool.jpg">
            <h2>Pool Area</h2>
            <p>Book our pool area for your party and enjoy the sun and water.</p>
            <a href="pool-details.jsp" style="background-color: #7fc142;">view Details</a>
        </div>
        <div class="booking-option">
            <img src="images/hall.jpg">
            <h2>Hall</h2>
            <p>Our hall is perfect for indoor events and can accommodate a large group.</p>
            <a href="book_hall.jsp" style="background-color: #7fc142;">view Details</a>
        </div>
        <div class="booking-option">
            <img src="images/outdoor.jpg">
            <h2>Outdoor</h2>
            <p>Enjoy the great outdoors with our spacious outdoor party area.</p>
            <a href="book_outdoor.jsp" style="background-color: #7fc142;">view Details</a>
        </div>
    </section>
   <center>
    
    <button><a href = "eventinsert.jsp" style="background-color: #7fc142;">Book Now</a></button>
    </center>
   
    
</body>
 <jsp:include page="Footer.jsp" />
</html>