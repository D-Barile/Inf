<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="main">
	<c:forEach var="anime" items="${anime}">
		<div class="card${anime.getId()} card">
			<h2>${anime.getName()}</h2>
			<h3>Episodi: ${anime.getEpisodes()}</h3>
			<img src="${anime.getImg()}" width="180px" height="280px" />
			<br />
			<a class="action btn" href="delete-anime/${anime.getId()}">Elimina</a>
			<a class="action btn" href="update-anime/${anime.getId()}">Aggiorna</a>
		</div>
	</c:forEach>
	<c:forEach var="videogames" items="${videogames}">
		<div class="card${videogames.getId()} card">
			<h2>${videogames.getName()}</h2>
			<h3>Pegi ${videogames.getPegi()}+</h3>
			<img src="${videogames.getImg()}" width="180px" height="280px" />
			<br />
			<a class="action btn" href="delete-videogame/${videogames.getId()}">Elimina</a>
			<a class="action btn" href="/">Aggiorna</a>
		</div>
	</c:forEach>
</div>