<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkFrom(){
		alert("아이디 : "+document.loginForm.id.value +"\n"+"비밀번호 : "+document.loginForm.passwd.value);
	}
</script>
<body>
	<form name="loginForm">
	<p> 아이디 : <input type="text" name="id">
	<p> 비밀번호 : <input type="password" name="passwd">
	
	<p> <input type="submit" value="전송" onclick="checkFrom()">
	</form>
</body>
</html>