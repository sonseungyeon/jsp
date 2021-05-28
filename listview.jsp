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
			<input type="text" placeholder="제목" name="title"><br>
			<input type="text" placeholder="영어제목" name="titleEng"><br>
			<input type="text" placeholder="월드박스오피스" name="worldBoxOffice"><br>
			<input type="submit" value="메시지 남기기"><br>
			
		</fieldset>
	</form>
	<c:if test="${viewData.marvelTotalCount ==0}">
	등록된 메시지가 없습니다.
</c:if>
	<c:if test="${viewData.marvelTotalCount >0}">
		<section>
			<c:forEach var="marvel" items="${viewData.marvelList }">
				<article>
					마블 ID: ${marvel.marvelId }<br>
					영화 제목 : ${marvel.title }<br>
					영화 영어제목 : ${marvel.titleEng }<br>
					릴리즈날짜 : ${marvel.releaseDate }<br>
					월드박스오피스 : ${marvel.worldBoxOffice }<br>
					작성날짜 : ${marvel.writeDate }<br>
					업데이트날짜 : ${marvel.updateDate }<br>
					<a href="${pageContext.request.contextPath }/update?marvel_id=${marvel.marvelId}">수정</a><br>
					<a href="${pageContext.request.contextPath }/delete?marvel_id=${marvel.marvelId}">삭제</a><br>
				</article>
			</c:forEach>
		</section>
		
		<%-- 페이징! --%>
		<section>
			<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount }">
				<a href="list?page=${pageNum }">[${pageNum }]</a>
			</c:forEach>
		</section>
	</c:if>
</body>
</html>