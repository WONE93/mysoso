<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
.basic_tb {
border-top: 2px solid #cecece;
width: 100%;
}

</style>

<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script>
 $(function(){
	 $(".empId").on("click", function(){
		 var empid = $(this).html()
		 var url = "getEmp/"+ empid;
	//	 $("#getEmpDiv").load(url)
		/* $.getJSON("getEmpAjax", {employeeId:empid}, function(result){
			$(".row").find(".col").eq(0).html(result.employeeId);
			$(".row").find(".col").eq(1).html(result.firstName);
			$(".row").find(".col").eq(2).html(result.email);
			
		}); 애러할때 처리하는 콜백함수가없쥐 벗 아이작스는잇지*/  
		$.ajax({
			url : "getEmpAjax", 
			data : {employeeId:empid},
			method : 'get',
			dataType : 'json'/* ,
			success :  function(result){
				$(".row").find(".col").eq(0).html(result.employeeId);
				$(".row").find(".col").eq(1).html(result.firstName);
				$(".row").find(".col").eq(2).html(result.email);				
			},
			error : function(){
				alert("error");
			},
			async : false,
			cache : false */ 
		}).done(function(result){
			$(".row").find(".col").eq(0).html(result.employeeId);
			$(".row").find(".col").eq(1).html(result.firstName);
			$(".row").find(".col").eq(2).html(result.email);
			console.log(result);
		})
		  .fail(function(){})
		  .always(function(){});
	 });	 
 });
</script>
</head>
<body>
	<h3>사원목록</h3>
	<div id="getEmpDiv">
		<div class="row">
			<div class="col">${emp.employeeId}</div>
			<div class="col">${emp.firstName}${emp.lastName}</div>
			<div class="col">${emp.email}</div>
		</div>
	</div>
		<table class="basic_tb">
	<c:forEach items="${empList}" var="emp">
			<%-- webapp 안에 리소스안에 파일 있음 src밑에 ${emp.profile}이렇게만 넣어줌 나옴 but 다른 폴더에 이미지 있음 다운로드 받아서 넣어야함 --%>
			<td><img src="download?name=${emp.profile}" 
			style="width:80px" onerror="this.src='resources/no.jpeg'">
			</td>
			<td><a href="#" class="empId">${emp.employeeId}</a></td>
			<td> ${emp.firstName}</td> 
			<td>${emp.lastName}</td>
		</tr>
	</c:forEach>
		</table>
		<a href = "report.do" target="_blank">pdf</a>
</body>
</html>