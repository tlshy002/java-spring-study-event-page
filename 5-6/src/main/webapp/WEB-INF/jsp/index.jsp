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
<h2>���� ��� ȭ��</h2>
<table border="1">
	<tr class="header">
		<th align="center" width="80">��ǰ��ȣ</th>
		<th align="center" width="320">��ǰ�̸�</th>
		<th align="center" width="100">��ǰ����</th>
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