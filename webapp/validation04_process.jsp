<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>

<body>
<h3>입력에 성공했습니다.</h3>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
%>
<p> 아이디:<%=id %>
<p> 비밀번호:<%=passwd %>
</body>
</html>