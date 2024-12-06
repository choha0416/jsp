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
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");
	if(id.equals("root") && pw.equals("1234")) {
		response.sendRedirect("response01_success.jsp");
	} else {
		response.sendRedirect("response01_fails.jsp");
	}
%>

</body>
</html>