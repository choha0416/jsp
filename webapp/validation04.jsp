<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		var form=document.loginForm;

		for(i=0; i<form.id.value.length; i++) {
			var ch = form.id.value.charAt(i);
			
			if ((ch<'a' || ch>'z')&&(ch>'A' || ch<'Z')&&(ch>'0' || ch<'9')){
				alert("아이디에 특수 문자는 불가능 합니다!");
				form.id.select();
				return false;
			}
		}
		if(isNaN(form.passwd.value)){
			alert("비밀번호는 숫자만 입력 가능 합니다!");
			form.passwd.select();
			return false;
		}
		form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation04_process.jsp" method="post" onsubmit="return checkLogin()">
	<p> 아이디 : <input type="text" name="id">
	<p> 비밀번호 : <input type="password" name="passwd">
	
	<p> <input type="submit" value="전송">
	</form>
</body>
</html>