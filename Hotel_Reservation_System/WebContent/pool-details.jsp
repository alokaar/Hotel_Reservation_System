<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Pool Area Details</title>
    <link rel="stylesheet" type="text/css" href="css/pool.css">
    <script type="text/javascript" src="js/menu.js"></script>
</head>
<body>
    <div class="container">
        <h1> POOL DAY</h1>
        
        <div class="details">
            <div class="section">
                <h2>Prices</h2>
                <p>Weekday Price: $20 per person</p>
                <p>Weekend Price: $30 per person</p>
            </div>
            
            <div class="section">
                <h2>Menu</h2>
                <select id="menu">
                    <option value="">Select Menu</option>
                    <option value="menu1">Menu 1</option>
                    <option value="menu2">Menu 2</option>
                    <option value="menu3">Menu 3</option>
                </select>
            </div>
            
            <div class="section" id="menu-details">
                <!-- Menu details will be displayed here -->
            </div>
            
            <div class="section">
                <h2>Maximum and Minimum People</h2>
                <p>Maximum: 100 people</p>
                <p>Minimum: 10 people</p>
            </div>
            
            <div class="section">
                <h2>Package Per Person</h2>
                <p>Package includes: </p>
                <ul>
                    <li>Access to the pool area</li>
                    <li>Choice of menu</li>
                    <li>Use of pool equipment</li>
                </ul>
            </div>
            <button><a href="wedding.jsp" class="oval-button">Go Back</a>
</a></button>
        </div>
    </div>
</body>
</html>
