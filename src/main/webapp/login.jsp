<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="css/style.css?abc=1">
</head>
<body>
    <div class="login-container">
        <h1>Sign In</h1>
        <form action="login.jsp" method="post">
        <div>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required></div><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <a href="#">Forget the password?</a>
            <div class="remember-me">
                <input type="checkbox" id="remember-me" name="remember-me">
                <label for="remember-me">Remember me</label>
            </div>
            
            <div class="social-icons">
                <img src="images/gm.jpeg" alt="Gmail">
                <img src="images/fb.jpeg" alt="Facebook">
            </div>
            <button type="submit">Login</button>
        </form>
        <div class="login-options">
            <p>Don't have an account? <a href="registration.jsp">Sign up</a></p>
            <p><a href="#">Terms and Conditions</a></p>
        </div>
    </div>
</body>
</html>
