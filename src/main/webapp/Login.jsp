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
    <link rel="stylesheet" href="stylelog.css">
    <title>Smart Library Management</title>
</head>
<body>
    <div class="head">
        <h2>Smart Library</h2>
    </div>
    <div class="log">
        <form   method="post">
            <h1>LOGIN</h1>
            <div class="content">
                <div class="form-field">
                    <input type="text"     id="UserId" name="UserId" placeholder="UserId" required><br>
                    <input type="password" id="password"   name="Password"   placeholder="Password" required><br>
                </div>
                <button type="submit" value="LOGIN">LOGIN</button><br>
                <p>Don't have an account? <a href="Register.jsp">Register</a></p>
            </div>
        </form>
    </div>
 <% 
String uid=request.getParameter("UserId");
String pwd=request.getParameter("Password");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
//Establish connection to database server
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JavaProject", "root", "Varun#20");
Statement stmt=conn.createStatement();
stmt = conn.createStatement();
ResultSet rs;
rs =stmt.executeQuery("select UserId,Password from librarians");
String Uid="",pass="";
int flag=0;
if(uid!=null&&pass!=null)
{
	while(rs.next())
	{
		Uid=rs.getString("UserId");
		pass=rs.getString("Password");
		if(uid.equals(Uid)&&pwd.equals(pass))
		{
			out.println("Login Successfull!");
			response.sendRedirect("Homepage.jsp");
			flag=1;
			break;
		}
	}
}
if(uid!=null&& flag==0)
{
	out.println("Incorrect Credentials!"+"<a href='Login.jsp'>Retry</a>");
}
conn.close();

}
catch(SQLException e){
	out.print(e);
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>