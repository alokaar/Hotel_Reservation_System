<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration Page</title>
    <link rel="stylesheet"  href="css/rstyle.css">
</head>
<body>
    <div class="registration-container">
        <h1>Create an Account</h1>
        <form action="login.jsp" method="post">
        <div>
            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="fullname" required></div><br>
            <label for="email">Gmail:</label>
            <input type="email" id="email" name="email" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <label for="confirm-password">Confirm Password:</label>
            <input type="password" id="confirm-password" name="confirm-password" required><br>
            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" required><br>
            <button type="submit">Register</button>
        </form>
        <div class="login-link">
            Already have an account? <a href="login.jsp">Sign In</a>
        </div>
    </div>
</body>
</html>
