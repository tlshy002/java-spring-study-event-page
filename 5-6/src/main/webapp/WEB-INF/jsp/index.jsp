<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="center" class="body">
<h2>과일 목록 화면</h2>
<table border="1">
	<tr class="header">
		<th align="center" width="80">상품번호</th>
		<th align="center" width="320">상품이름</th>
		<th align="center" width="100">상품가격</th>
	</tr>
	<c:forEach var="item" items="${itemList}">
	<tr class="record">
		<th align="center">${item.seqno}</th>
		<th align="center">${item.title}</th>
		<th align="center">${item.price}</th>
	</tr>
	</c:forEach>
</table>
</div>
</body>
</html>