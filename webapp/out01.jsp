<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
out.println("오늘의 날짜 및 시각"+"<bt>");
out.println(java.util.Calendar.getInstance().getTime());
%>
</body>
</html>