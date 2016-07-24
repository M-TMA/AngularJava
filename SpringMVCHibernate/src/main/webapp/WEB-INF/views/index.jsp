<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %> 
 
<html lang="en">
<head>

<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-sanitize.js"></script>
<script src="https://code.angularjs.org/1.2.28/angular-route.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-2.2.4.min.js" ></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://rawgit.com/dwmkerr/angular-modal-service/master/dst/angular-modal-service.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-animate.js"></script>
<script src="https://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-2.0.0.js"></script>

<meta charset="UTF-8">
<title>Báo Mới</title>
</head>
<body ng-app="myApp" ng-controller="ArticleController as ar">
	<div class="header">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#/content">Báo Mới</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#/content">Home</a></li>
					<li><a  href="#/content/Healthy" >Healthy</a></li>
					<li><a  href="#/content/Knowledge Fam">Knowledge Fam</a></li>
					<li><a href="#/content/World">World</a></li>
					<li><a  href="#/content/Asia Film">Asia Film</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div ng-view></div>
	<div class="footer"></div>
</body>
	  <link type="text/css" rel="stylesheet" href="<c:url value='/static/css/style.css' />" />
  	  <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/article_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/detail_article_controller.js' />"></script>
      <script src="<c:url value='/static/js/controller/content_controller.js' />"></script>
      <script src="<c:url value='/static/js/controller/article_controller.js' />"></script>
</html>
