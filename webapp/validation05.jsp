<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkMember() {
		var regExpId=/^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var regExpName = /^[가-힣]*$/;
		var regExpPasswd= /^[0-9]*$/;
		var regExpPhone=/^\d{3}-\d{3,4}-\d{4}$/;
		var regExpEmail= /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		var form = document.Member;
	
		var id = form.id.value;
		var name = form.name.value;
		var passwd = form.passwd.value;
		var phone = form.phone1.value + "-" + form.phone2.value + "-" +form.phone3.value;
		var email = form.email.value;
		
		if (!regExpId.test(id)) {
			alert("아이디는 문자로 시작해주세요!");
			form.id.select();
			return false;
		}
		if (!regExpName.test(name)) {
			alert("이름은 한글만 입력해주세요!");
			return false;
		}
		if (!regExpPasswd.test(passwd)) {
			alert("비밀번호는 숫자만 입력해주세요!");
			return false;
		}
		if (!regExpPhone.test(phone)) {
			alert("연락처 입력을 확인해주세요!");
			return false;
		}
		if (!regExpEmail.test(email)) {
			alert("이메일 입력을 확인해주세요!");
			return false;
		}
		form.submit();
	}
</script>
<body>
	<form name="Member" action="validation05_process.jsp" method="post" onsubmit="return checkMember()">
	<p> 아이디 : <input type="text" name="id">
	<p> 비밀번호 : <input type="password" name="passwd">
	<p> 이름 : <input type="text" name="name">
	<p> 연락처 : <select name="phone1">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="016">016</option>
		<option value="017">017</option>
		<option value="019">019</option>
		</select>-<input type="text" maxlength="4" size="4" name="phone2">-
		<input type="text" maxlength="4" size="4" name="phone3">
	<p> 이메일 : <input type="text" name="email">
	
	<p> <input type="submit" value="전송">
	</form>
</body>
</html>