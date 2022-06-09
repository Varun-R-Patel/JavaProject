<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="java.lang.Class" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Register</title>
</head>
<body>
    <div class="head">
        <h2 style="font-size: large;">Smart Library</h2>
    </div>
    <div class="log">
        <form   method="post" action="details.jsp">
            <h1>SIGN UP</h1>
            <div class="content">
                <div class="form-field">
                    <input type="text"     id="UId" name="UserId" placeholder="UserId" required><br>
                    <input type="text"     id="fname"    name="fname"    placeholder="First Name" required><br>
                    <input type="text"     id="lname"    name="lname"    placeholder="Last Name" required><br>
                    <input type="email"     id="mail"     name="mail"     placeholder="Email" required><br>
                    <input type="password" id="pass"     name="pass"     placeholder="Password" required> <br>
                    <input type="password" id="cpass"     name="cpass"     placeholder="Confirm Password" required> <br>
                </div>
                <button type="submit" onclick="sub()" >REGISTER</button>
                <p>Already have an account? <a href="Login.jsp">Login</a></p>
                
            </div>
        </form>
    </div>
</body>
</html>