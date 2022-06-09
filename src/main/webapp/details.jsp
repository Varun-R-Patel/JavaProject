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
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><% 
 try
 {
	 String uid=request.getParameter("UserId");
	 String fnm=request.getParameter("fname");
	 String lnm=request.getParameter("lname");
	 String email=request.getParameter("mail");
	 String pwd=request.getParameter("pass");
	 Class.forName("com.mysql.cj.jdbc.Driver");
	//Establish connection to database server
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JavaProject", "root", "Varun#20");
	Statement st=conn.createStatement();
	ResultSet rs;
	rs=st.executeQuery("select UserId from librarians");
	String ui="";
	/*int flag=0;
	if(uid!=null)
	{
		while(rs.next())
		{
			ui=rs.getString("UserId");
			if(uid.equals(ui))
			{
				flag=1;
				out.println("User already e");
				break;
			}
		}
	}
	if(flag==0)
	{
		st.executeUpdate("insert into librarians(UserId,First_Name,Last_Name,email_ID,Password) values('"+uid+"','"+fnm+"','"+lnm+"','"+email+"','"+pwd+"');");
	} */
	st.executeUpdate("insert into librarians(UserId,First_Name,Last_Name,email_ID,Password) values('"+uid+"','"+fnm+"','"+lnm+"','"+email+"','"+pwd+"');");
	request.setAttribute("Message","Librarian Data inserted Successfully!");
	response.sendRedirect("Login.jsp");
	//System.out.println("Data is successfully inserted!");
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