<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ page import="java.util.Locale,java.util.Date" %>
        <%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Locale locale = request.getLocale();
		String date = DateFormat.getDateTimeInstance(DateFormat.FULL,
				DateFormat.SHORT,locale).format(new Date());
		
		NumberFormat currency=NumberFormat.getCurrencyInstance(locale);
		NumberFormat percentage=NumberFormat.getPercentInstance(locale);
		String fcurency=currency.format(1234567);
		String fpercentage=percentage.format(0.25);
	%>
	 
	<p> 로케일의 날짜 형식
	<p> <% out.print(date); %>
	
	
	<p> 로케일의 통화 형식 : <%out.print(fcurency); %>
	<p> 로케일의 비율 형식 : <%out.print(fpercentage); %>
</body>
</html>