<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listview.jsp</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/write" method="post">
	<fieldset>
		<legend>마블 영화</legend>
		<input type="text" name="marvelId" placeholder="마블 아이디">
		<input type="submit" value="메시지 남기기"><br>
		<textarea rows="5" cols="20" placeholder="제목" name="title"></textarea>
	</fieldset>
</form>
<c:if test="${viewData.marvelTotalCount ==0}">
	등록된 메시지가 없습니다.
</c:if>
	<c:if test="${viewData.marvelTotalCount >0}">
		<section>
			<c:forEach var="marvel" items="${viewData.marvelList }">
				<article>
					마블 ID: ${marvel.marverId }<br>
					영화 제목 : ${marvel.title }<br>
					영화 영어제목 : ${marvel.titleEng }<br><%-- 
					내용 : 
					<div>
						${marvel.message }
					</div> --%>
				</article>
			</c:forEach>
		</section>
		
		<%-- 페이징! --%>
		<section>
			<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount }">
				<a href="list.jsp?page=${pageNum }">[${pageNum }]</a>
			</c:forEach>
		</section>
	</c:if>
</body>
</html>