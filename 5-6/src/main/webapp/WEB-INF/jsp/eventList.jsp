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
<h2>�̺�Ʈ ���</h2>
<table border="1">
	<tr><th width="80">�̺�Ʈ ��ȣ</th>
		<th width="200">�̺�Ʈ �̸�</th>
		<th width="100">�̺�Ʈ ��¥</th></tr>
	<c:forEach var="event" items="${eventList }">
	<tr><td>${event.eventId }</td><td>${event.name }</td><td>${event.date }</td></tr>
	</c:forEach>
</table><br/><a href="../event/event.html">�� �������� ���ư���</a>
</div>

</body>
</html>