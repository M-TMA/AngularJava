<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html lang="en">

<head>
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
					<div class="title">{{detailArticleCtrl.article.title}}</div>
					<p class="detail_content">{{detailArticleCtrl.article.content}}</p>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
</body>
</html>
