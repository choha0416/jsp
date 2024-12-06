<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Locale" %>    
<!DOCTYPE html>
<%
	Locale locale=request.getLocale();
	String displayLanguage=locale.getDisplayLanguage();
	String language=locale.getLanguage();
	String dispalyCountry= locale.getDisplayCountry();
	String country=locale.getCountry();
%>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("로케일언어:"+displayLanguage+"<br>");
	out.println("로케일언어코드:"+language+"<br>");
	out.println("로케일국가:"+dispalyCountry+"<br>");
	out.println("로케일국가코드:"+country+"<br>");
%>
</body>
</html>