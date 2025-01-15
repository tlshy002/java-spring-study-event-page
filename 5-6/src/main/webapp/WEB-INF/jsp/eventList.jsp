<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>이벤트 목록</h2>
<table border="1">
	<tr><th width="80">이벤트 번호</th>
		<th width="200">이벤트 이름</th>
		<th width="100">이벤트 날짜</th></tr>
	<c:forEach var="event" items="${eventList }">
	<tr><td>${event.eventId }</td><td>${event.name }</td><td>${event.date }</td></tr>
	</c:forEach>
</table><br/><a href="../event/event.html">■ 이전으로 돌아가기</a>
</div>

</body>
</html>