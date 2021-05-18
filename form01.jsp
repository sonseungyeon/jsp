<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼</title>
</head>
<body>
	<h1>클라이언트에 정보 받기</h1>
	<form action="result01.jsp" method = "get">
		<input type ="text" name = "name" placeholder="이름을 입력하세요"><br>
		<input type ="text" name = "address" placeholder="주소를 입력하세요"><br>
		<fieldset>
		<legend>성별</legend>
			<input type = "radio" value = "man" name = "sex" id="man"><label for="man">남</label>
			<input type = "radio" value = "woman" name = "sex" id="woman" ><label for="woman">여</label>
		</fieldset>
		<fieldset>
		<legend>취미</legend>
			<input type = "checkbox" value = "운동" name = "hobby" id="exercise"><label for="exercise">운동</label>
			<input type = "checkbox" value = "낚시" name = "hobby" id="fishing"><label for="exercise">낚시</label>
		</fieldset>
		<input type="submit" value="보내기">
	</form>
</body>
</html>