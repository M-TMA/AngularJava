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

<link rel="stylesheet" href="C:\xampp\htdocs\BaoMoi\css\style.css">
<script src="../js/controller/action-menu.js"></script>
<meta charset="UTF-8">

<title>Báo Mới</title>

</head>

<body>


	<div class="header">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Báo Mới</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">Thể Thao</a></li>
					<li><a href="#">Sức Khỏe</a></li>
					<li><a href="#">Thế Giới</a></li>
					<li><a href="#">Giáo Dục</a></li>
				</ul>
			</div>
		</nav>

		<div class="container">
			<div class="jumbotron">
				<h1>Báo Mới Của Mọi Nhà</h1>
				<p>Hãy theo dõi chúng tôi</p>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="container">
			<div class="row">
			<c:forEach items="${listArticle}" var="article">
				<div class="col-md-2">
					<a href="#" class="thumbnail"> <img
						src="${article.img}"
						alt="">
					</a> <span class="date">${article.time}</span>
					<div class="category">
						<a href="#">${article.category}</a>
					</div>
					<span class="title"><a href="#">${article.title}</a></span>
					<p class="quick-content">${article.subContent}</p>
				</div>
			</c:forEach>
			
				
			</div>
		</div>
	</div>
	<div class="footer"></div>

</body>


</html>
