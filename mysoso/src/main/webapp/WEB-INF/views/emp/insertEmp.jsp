<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<h1>사원등록</h1>

	<img src="./images/Chrysanthemum.jpg" width="100px">

	<form action="empInsert" method="post" enctype="multipart/form-data">
		first_name<input name="firstName"><br>
		lastNmae<input name="lastName"><br>
		email<input name="email"><br>
		jobId<input name="jobId"><br>
		hireDate<input name="hireDate"><br>
		<input type="file" name="uploadFile"/><br>
		<button>등록</button>	
	</form>
