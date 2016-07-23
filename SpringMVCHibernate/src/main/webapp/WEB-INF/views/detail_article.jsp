<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %> 
<html lang="en">

<head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-2.2.4.min.js" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.angularjs.org/1.4.9/angular.min.js"></script>
<script src="https://rawgit.com/dwmkerr/angular-modal-service/master/dst/angular-modal-service.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-animate.js"></script>
<script src="https://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-2.0.0.js"></script>

<meta charset="UTF-8">

<title>Báo Mới</title>

<style>
.detail {
	background-color: azure;
	border-radius: 5px;
	height: 1000px;
	margin-top: 65px;
}

.title {
	font-size: 40px;
}
</style>

</head>

<head>
<meta charset="UTF-8">
<title>Document</title>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-7">
				<div class="detail">
					<span class="time"></span>
					<div class="title">{{article.title}}</div>
					<p class="detail_content">{{article.content}}</p>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>

</body>

</html>
