<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.all {
	width: 100%;
	height: 100%;
}

.floating {
	float: left;
}

.box {
	display: table;
}

html {
	width: 100%;
	height: 100%;
}

.head {
	width: 100%;
	height: 150px;
	border: 1px solid black;
}

.menu {
	position: absolute;
	width: 30%;
	height: 600px;
	border: 1px solid black;
}

.main {
	position: absolute;
	width: 70%;
	height: 600px;
	border: 1px solid black;
}

.mainMenu {
	position: relative;
	width: 100%;
	height: 600px;
	border: 1px solid black;
}

.footer {
	width: 100%;
	height: 150px;
	border: 1px solid black;
}
</style>
</head>
<body>
	<div class="box all floating">
		<div class="box head floating"><jsp:include page="head.jsp" /></div>
		<div class="box mainMenu floating">
			<div class="box menu floating"><jsp:include page="menu.jsp" /></div>
			<div class="box main floating">main</div>
		</div>
		<div class="box footer floating"><jsp:include page="footer.jsp" /></div>
	</div>
</body>
</html>