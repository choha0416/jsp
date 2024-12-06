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
		String id= request.getParameter("id");
	String passwd= request.getParameter("passwd");
	%>
	<p> 입력된 id 값 : <%=id %>
	<p> 입력된 passwd 값 : <%=passwd %>
</body>
</html>