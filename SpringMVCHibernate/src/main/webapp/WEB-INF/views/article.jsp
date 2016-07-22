<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>article Page</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>
</head>
<body>
	<h1>Add a article</h1>

	<c:url var="addAction" value="/articles/add"></c:url>

	<form:form action="${addAction}" commandName="article">
		<table>
			<c:if test="${!empty article.title}">
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<td><form:input path="id" readonly="true" size="8"
							disabled="true" /> <form:hidden path="id" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="title">
						<spring:message text="Title" />
					</form:label></td>
				<td><form:input path="title" /></td>
			</tr>
			<tr>
				<td><form:label path="subContent">
						<spring:message text="Sub Content" />
					</form:label></td>
				<td><form:input path="subContent" /></td>
			</tr>
			<tr>
				<td><form:label path="time">
						<spring:message text="Time" />
					</form:label></td>
				<td><form:input path="time" /></td>
			</tr>
			<tr>
				<td><form:label path="category">
						<spring:message text="Category" />
					</form:label></td>
				<td><form:input path="category" /></td>
			</tr>
			<tr>
				<td><form:label path="content">
						<spring:message text="content" />
					</form:label></td>
				<td><form:input path="content" /></td>
			</tr>
			<tr>
				<td><form:label path="img">
						<spring:message text="Img" />
					</form:label></td>
				<td><form:input path="img" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty article.title}">
						<input type="submit" value="<spring:message text="Edit article"/>" />
					</c:if> <c:if test="${empty article.title}">
						<input type="submit" value="<spring:message text="Add article"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<h3>Articles List</h3>
	<c:if test="${!empty listArticle}">
		<table class="tg">
			<tr>
				<th width="80">article ID</th>
				<th width="120">article Name</th>
				<th width="120">article content</th>
				<th width="120">Cover</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${listArticle}" var="article">
				<tr>
					<td>${article.id}</td>
					<td>${article.title}</td>
					<td>${article.content}</td>
					<td><img src="${article.img}"></td>
					<td><a href="<c:url value='/edit/${article.id}' />">Edit</a></td>
					<td><a href="<c:url value='/remove/${article.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>
