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
	String sessin_id =session.getId();
	
	long last_time=session.getLastAccessedTime();
	
	long Start_time=session.getCreationTime();
	
	long userd_time=(last_time - Start_time) / 60000;
	
	out.println("세션 아이디 : " + sessin_id + "<br>");
	out.println("요청 시작 시간 : " + Start_time + "<br>");
	out.println("요청 마지막 시간 : " + last_time + "<br>");
	out.println("웹사이트의 경과 시간 : " + userd_time + "<br>");
%>	
</body>
</html>