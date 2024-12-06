<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String[] hobbys = request.getParameterValues("hobby");

%>
<p>아이디: ${uid}</p>
<p>비밀번호: ${upw}</p>
<p>휴대전화번호 ${ph1}-${ph2}-${ph3} </p>
<p>성별: ${usex}</p>


			
<%	 for(int i=0;i<hobbys.length;i++) {
		if(hobbys[i]!=null) {%>
			<p>취미 : <%= hobbys[i]%></p>
		<%}
	} 
%>
<p>인사말: ${uta}</p>	
</body>
</html>