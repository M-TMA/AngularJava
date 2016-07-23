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
        background-color: cornflowerblue;
        color: white;
        font-size: 12px;
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
    }
 .col-md-2 {
    width: 191px;
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
}

 .thumbnail:hover .mauvang {
	opacity:0.4;
	top:11px;
}

.mauvang {
    background-color: yellow;
    position: absolute;
    top: 11px;
    opacity: 0;
    height: 155px;
    width: 149px;
    margin-left: 0px;
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
    margin-top: 7px;
}

</style>
</head>

<body>
	<div class="header">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Báo Mới</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="<c:url value='/articles'/>">Home</a></li>
					<li><a href="<c:url value='/articles/Healthy'/>">Healthy</a></li>
					<li><a href="<c:url value='/articles/Knowledge Fam'/>">Knowledge Fam</a></li>
					<li><a href="<c:url value='/articles/World'/>">World</a></li>
					<li><a href="<c:url value='/articles/Asia Film'/>">Asia Film</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="content">
		<div class="container">
			<!-- c:forEach items="${listArticle}" var="article" varStatus="loop"-->
			<!-- c:if test="${(loop.index+1) % 6==0}"-->
				<div class="row">
					<c:forEach items="${listArticle}" var="article">
						<div class="col-md-2">
							<a href="<c:url value='/detail/${article.id}'/>" class="thumbnail"> <img
							src="${article.img}"
							alt="">
							<div class = "mauvang"> </div>
							</a>
							 <span class="date">${article.time}</span>
							<div class="category">
								<a href="#">${article.category}</a>
							</div>
							<span class="title"><a href="<c:url value='/articles/${article.id}'/>">${article.title}</a></span>
							<p class="quick-content">${article.subContent}</p>
						</div>
					</c:forEach>
				</div>
			<!--  /c:if-->
			<!--  /c:forEach-->
			
		</div>
	</div>
	<div class="footer"></div>

</body>


</html>
