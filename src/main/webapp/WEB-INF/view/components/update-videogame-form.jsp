<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>INF - Aggiorna videogioco</title>
	</head>
	<body>
		<form action="/update-videogame/${videogame.getId()}" method="post">
			<input type="number" readonly="readonly" name="id" value="${videogame.getId()}">
			<input type="text" name="name" value="${videogame.getName()}">
			<input type="number" name="pegi" value="${videogame.getPegi()}">
			<input type="url" name="img" value="${videogame.getImg()}">
			<input type="submit" value="Aggiona">
			<a href="/home">Annulla</a>
		</form>
	</body>
</html>