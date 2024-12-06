<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="aa" encType="utf-8" method="post">
	<p>아이디 : <input type="text" name= id></p>
	<p>비밀번호 : <input type="password" name= pw></p>
	<p>이름 : <input type="text" name= name></p>
	<p>연락처: <input type="text" maxlength="4" name="phone1">-<input type="text" maxlength="4" name="phone2">
	-<input type="text" maxlength="4" name="phone3"></p>
	<p>성별:<input type="radio" name= "sex" value="남성" checked>남성
	<input type="radio" name= "sex" value="여성">여성
	</p>
	<p>취미: 독서<input type="checkbox" name="hobby" value="독서"checked>
	운동<input type="checkbox" name="hobby" value="운동">
	영화<input type="checkbox" name="hobby" value="영화"></p>
	<p>인사말 : <input type="textarea" name= ta></p>
	<input type="submit" value="가입하기">
	</form>
	
</body>
</html>