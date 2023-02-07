<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>INF - Home Page</title>
		<link href="css/light/navbar.css" rel="stylesheet">
		<link href="css/light/sidebar.css" rel="stylesheet">
		<link href="css/light/form.css" rel="stylesheet">
		<link href="css/light/main.css" rel="stylesheet">
	</head>
	<body style="margin: 0;">
		<jsp:include page="components/navbar.jsp"></jsp:include>
		<hr />
		<div style="display: flex;">
			<jsp:include page="components/sidebar.jsp"></jsp:include>
			<jsp:include page="components/main.jsp"></jsp:include>
		</div>
	</body>
</html>