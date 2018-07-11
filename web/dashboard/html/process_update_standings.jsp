<%-- 
    Document   : home
    Created on : Jun 24, 2018, 11:00:34 PM
    Author     : Bernard Kapinda
--%>


<%@page import="process.convert_jsonmatch_results_to_java"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pwd = request.getParameter("pwd");

if(pwd.equals("fifa")){
convert_jsonmatch_results_to_java.deSerializeMatch_Results();
response.sendRedirect("update_standings_Success_msg.jsp");
}else{
response.sendRedirect("update_standing_pwd_failure.jsp");
}

%>