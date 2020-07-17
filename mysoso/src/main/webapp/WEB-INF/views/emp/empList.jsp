<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h3>사원목록</h3>
	<c:forEach items="${empList}" var="emp">
			<%-- webapp 안에 리소스안에 파일 있음 src밑에 ${emp.profile}이렇게만 넣어줌 나옴 but 다른 폴더에 이미지 있음 다운로드 받아서 넣어야함 --%>
	
		<img src="download?name=${emp.profile}" 
			style="width:80px" onerror="this.src='resources/no.jpeg'">
			
			${emp.employeeId} ${emp.firstName} ${emp.lastName} <br>
	</c:forEach>
</body>
</html>