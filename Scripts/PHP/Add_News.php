<?php
	//Si les champ news_title et news_content sont remplie
	if(isset($_POST['news_title']) && isset($_POST['news_content']))
	{
		//Titre de la news sécurisé
		$title = htmlentities(strip_tags($_POST['news_title']));
		//Contenu de la news sécurisé
		$content = htmlentities(strip_tags($_POST['news_content']));
		//USER_ID
		$id = $_SESSION['ID'];
		//requete pour ajouter une news
		$req = "INSERT INTO ".$Config["SQL"]["BASE"].".NEWS (NEWS_TITLE, NEWS_CONTENT, NEWS_TIMESTAMP, NEWS_VISIBLE, NEWS_USER_ID) VALUES (?, ?, ?, ?, ?)";
		//On prepare la requete
		$stmt = $bdd->prepare($req);
		//On execute la requete en lui passant les parametres
		$stmt->execute(array($title, $content, time(), 1, $id));
		//On affiche du texte
		echo "News ajoutée !";
		
	}
?>
<fieldset> 
	<legend>Poster une news</legend>
	<form method="POST" id="NEWS">
		<label>Titre :
			<input type="text" name="news_title" placeholder="Titre de la news">
		</label>
		<label>Contenu :
			<textarea name="news_content" placeholder="Contenu de la news"></textarea>
		</label>
		<input type="submit" value="Poster">
	</form>
</fieldset>