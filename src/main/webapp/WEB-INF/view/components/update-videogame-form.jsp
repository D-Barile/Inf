<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>INF - Aggiorna videogioco</title>
		<link href="/css/update-form.css" rel="stylesheet">
	</head>
	<body>
		<div>
			<form action="/update-videogame/${videogame.getId()}" method="post">
				<input type="number" readonly="readonly" name="id" value="${videogame.getId()}">
				<br />
				<input type="text" name="name" value="${videogame.getName()}">
				<br />
				<input type="number" name="pegi" value="${videogame.getPegi()}">
				<br />
				<input type="url" name="img" value="${videogame.getImg()}">
				<br />
				<input type="submit" value="Aggiona">
				<br />
				<a href="/home">Annulla</a>
			</form>
		</div>
	</body>
</html>