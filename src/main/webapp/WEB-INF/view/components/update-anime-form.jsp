<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>INF - Aggiorna anime</title>
	</head>
	<body>
		<form action="/update-anime/${anime.getId()}" method="post">
			<input type="number" readonly="readonly" name="id" value="${anime.getId()}">
			<input type="text" name="name" value="${anime.getName()}">
			<input type="number" name="episodes" value="${anime.getEpisodes()}">
			<input type="url" name="img" value="${anime.getImg()}">
			<input type="submit" value="Aggiona">
			<a href="/home">Annulla</a>
		</form>
	</body>
</html>