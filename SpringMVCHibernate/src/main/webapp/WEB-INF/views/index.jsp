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
    .icon img {
        width: 72px;
    }
    .icon {
        height: 300px;
    }
    .col-md-12.text-center {
        margin-top: 55px;
    }
    body {
        background-color: cornsilk;
    }
   span.date {
    border: solid 1px;
    background-color: blanchedalmond;
    color: #E000A4;
    font-size: 12px;
    margin-left: -10px;
}
    .category {
        text-transform: uppercase;
        font-size: 11px;
        margin-left: 77px;
        margin-top: -17px;
        color: black
    }
    .category a {
        color: brown;
        margin-left: -9px;
    }
    .col-md-2 {
        border: solid 1px #acb6bf;
        background-color: aliceblue;
    }
  p.quick-content {
    font-size: 11px;
    margin-left: -9px;
}
 .col-md-3 {
    width: 230px;
    border: solid 1px #acb6bf;
    background-color: aliceblue;
    margin-left: 2px;
    margin-right: 2px;
    border-radius: 3px;
    height: 329px;
    margin-top: 5px;
}
    .title a {
    font-size: 10px;    
    text-transform: uppercase;
    }
    
 .thumbnail a > img, .thumbnail > img {
    margin-right: auto;
    margin-left: auto;
    height: 154px;
    width: 300px;
}
 .thumbnail:hover .mauvang {
	opacity:0.4;
	top:0px;
}

.mauvang {
    background-color: yellow;
    position: absolute;
    top: 0px;
    opacity: 0;
    height: 152px;
    width: 211px;
    margin-left: 0px;
        margin-top: 10px;
    transition: all ease 0.9s;
}
.jumbotron {
    padding-right: 60px;
    padding-left: 60px;
    position:relative; 
}
.jumbotron:after {
    opacity: 0.3;
    background-color: aquamarine;
    
}
.jumbotron.slogan {
    color: black;
    position:relative;
    z-index:1;
}

.thumbnail {
    display: block;
    padding: 4px;
    margin-bottom: -1px;
    line-height: 1.42857143;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 4px;
    -webkit-transition: border .2s ease-in-out;
    -o-transition: border .2s ease-in-out;
    transition: border .2s ease-in-out;
    margin-top: 4px;
    width: 220px;
    margin-left: -11px;
}
.title {
    margin-top: 7px;
    margin-left: -9px;
}
</style>
</head>

<body ng-app="myApp" ng-controller="ArticleController as ar">
	<div class="header">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Báo Mới</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Home</a></li>
					<li><a href="" ng-click="">Healthy</a></li>
					<li><a href="">Knowledge Fam</a></li>
					<li><a href="">World</a></li>
					<li><a href="">Asia Film</a></li>
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
							<div class="title"><a href="">{{article.title}}</a></div>
							<p class="quick-content">{{article.subContent}}</p>
					</div>
				</div>
		</div>
	</div>
	<div class="footer"></div>

</body>
  	  <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/article_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/article_controller.js' />"></script>
</html>
