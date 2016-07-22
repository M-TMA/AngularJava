<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>film Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a film
</h1>

<c:url var="addAction" value="/films/add" ></c:url>

<form:form action="${addAction}" commandName="film">
<table>
	<c:if test="${!empty film.title}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="title">
				<spring:message text="Title"/>
			</form:label>
		</td>
		<td>
			<form:input path="title" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="content">
				<spring:message text="content"/>
			</form:label>
		</td>
		<td>
			<form:input path="content" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty film.title}">
				<input type="submit"
					value="<spring:message text="Edit film"/>" />
			</c:if>
			<c:if test="${empty film.title}">
				<input type="submit"
					value="<spring:message text="Add film"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>films List</h3>
<c:if test="${!empty listFilm}">
	<table class="tg">
	<tr>
		<th width="80">film ID</th>
		<th width="120">film Name</th>
		<th width="120">film content</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listFilm}" var="film">
		<tr>
			<td>${film.id}</td>
			<td>${film.title}</td>
			<td>${film.content}</td>
			<td><a href="<c:url value='/edit/${film.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${film.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
