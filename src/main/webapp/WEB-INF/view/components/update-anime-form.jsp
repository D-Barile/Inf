<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>INF - Aggiorna anime</title>
		<link href="/css/update-form.css" rel="stylesheet">
	</head>
	<body>
		<div>
			<form action="/update-anime/${anime.getId()}" method="post">
				<input type="number" readonly="readonly" name="id" value="${anime.getId()}">
				<br />
				<input type="text" name="name" value="${anime.getName()}">
				<br />
				<input type="number" name="episodes" value="${anime.getEpisodes()}">
				<br />
				<input type="url" name="img" value="${anime.getImg()}">
				<br />
				<input type="submit" value="Aggiona">
				<br />
				<a href="/home">Annulla</a>
			</form>
		</div>
	</body>
</html>