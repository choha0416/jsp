<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Locale" %>
<!DOCTYPE html>
<%
	response.setContentType("text/html");
	response.setHeader("Content-Language","es");
	String title="Espa&ntilde;ol";
%>
<html>
<head>
<meta charset="EUC-KR">
<title><% out.print(title); %></title>
</head>
<body>
<p> Idioma : <%out.print(title); %></p>
<p>&iexcl;Hola mundo!</p>
</body>
</html>