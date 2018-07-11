<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY>
 
<% 
 
String name=request.getParameter("name");
String pwd=request.getParameter("pwd");




	
	if(name.equals("fifa") && pwd.equals("fifa"))
		response.sendRedirect("fifa_main.jsp");
	else
		response.sendRedirect("loginfailure.jsp");
  

%>
</BODY>
</HTML>
