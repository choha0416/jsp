<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name= request.getParameter("name");
	%>
	<p> 입력된 name 값 : <%=name %>
</body>
</html>