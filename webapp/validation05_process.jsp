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
	
%>
<p> 아이디:<%=request.getParameter("id") %>
<p> 비밀번호:<%=request.getParameter("passwd") %>
<p> 이름 :<%=request.getParameter("name") %>
<p> 연락처 :<%=request.getParameter("phone1") %>-<%=request.getParameter("phone2") %>-<%=request.getParameter("phone3") %>
<p> 이메일 : <%=request.getParameter("email") %>
</body>
</html>