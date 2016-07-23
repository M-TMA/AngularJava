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
</head>
<body ng-app="myApp" ng-controller="ArticleController as ar">
	<div class="header">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Báo Mới</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active" ng-click="ar.fetchAllArticles()"><a href="">Home</a></li>
					<li><a href="" ng-click="ar.listArticlesByCategory('Healthy')">Healthy</a></li>
					<li><a href="" ng-click="ar.listArticlesByCategory('Knowledge Fam')">Knowledge Fam</a></li>
					<li><a href="" ng-click="ar.listArticlesByCategory('World')">World</a></li>
					<li><a href="" ng-click="ar.listArticlesByCategory('Asia Film')">Asia Film</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="content">
		<div class="container">
				<div class="row">
					<div class="col-md-3" ng-repeat="article in ar.Articles">
							<a href="" class="thumbnail"> 
							<img ng-src="{{article.img}}" alt="">
							<div class = "mauvang"> </div>
							</a>
							 <span class="date">{{article.time}}</span>
							<div class="category">
								<a href="#">{{article.category}}</a>
							</div>
							<div class="title"><a href="" ng-click="ar.getDetailArticleById(article.id)">{{article.title}}</a></div>
							<p class="quick-content">{{article.subContent}}</p>
					</div>
				</div>
		</div>
	</div>
	<div class="footer"></div>

</body>
	  <link type="text/css" rel="stylesheet" href="<c:url value='/static/css/style.css' />" />
  	  <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/article_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/article_controller.js' />"></script>
</html>
