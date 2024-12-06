<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<p>-------------기본 로케일-------------------
		
		<fmt:setBundle basename="bundle.myBundle" var="resourceBundle" />
		<p> 제목 : <fmt:message key="title" bundle="${resourceBundle}" />
		<p> <fmt:message key="username" var="userMsg" bundle="${resourceBundle}" />
		이름 : ${userMsg} 
	<p>-------------영문 로케일------------------
		<fmt:setLocale value="en" />
		<fmt:setBundle basename="bundle.myBundle" var="resourceBundle" />
		<p> 제목 : <fmt:message key="title" bundle="${resourceBundle}" />
		<p> 이름 : <fmt:message key="username" bundle="${resourceBundle}" />
		
</body>
</html>