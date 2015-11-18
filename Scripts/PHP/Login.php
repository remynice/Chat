<?php
	//Si l'utilisateur n'est pas connecté
	if(!is_Login())
	{
		//Si les champs sont remplie
		if(isset($_POST['LOGIN']) && isset($_POST['PASS']))
		{
			//On stoque et sécurise les valeurs des champs dans des variables
			$login = md5(htmlentities(strip_tags($_POST['LOGIN'])));
			$pass = md5(htmlentities(strip_tags($_POST['PASS'])));
		
			$req = "SELECT USER.USER_ID, USER.USER_RANK_VALUE, USER.USER_NAME, USER.USER_FIRSTNAME, USER.USER_BAN FROM ".$Config["SQL"]["BASE"].".USER WHERE USER_LOGIN=PASSWORD(?) AND USER_PASS=PASSWORD(?)";

			$stmt = $bdd->prepare($req);
			$stmt->execute(array($login, $pass));
			$ligne = $stmt->fetch(PDO::FETCH_ASSOC);
			if(intval($ligne) === 1)
			{
				//Si l'utilisateur n'est pas banni
				if(intval($ligne['USER_BAN']) == 0)
				{
					$_SESSION['ID'] = $ligne['USER_ID'];
					$_SESSION['RANK'] = $ligne['USER_RANK_VALUE'];
					session_regenerate_id();
					header("location:?PAGE=0");
				}
				else
				{
					echo "<p>Votre compte est banni, vous ne pouvez pas avoir accès au site.</p>";
				}
			}
			else
			{
				echo "<p>Identifiant ou mot de passe incorrect !</p>";
			}
		}
?>
		<form method="POST">
			<label>Identifiant : 
				<input type="TEXT" name="LOGIN" required>
			</label>
			<label>Mot de passe : 
				<input type="PASSWORD" name="PASS" required>
			</label>
			<input type="SUBMIT" value="Se connecter">
		</form>
		<p><a href='?PAGE=4'>Mot de passe perdu ?</a></p>
<?php
	}
	else //Si l'utilisateur est connecté
	{
		$req = "SELECT USER.USER_ID, USER.USER_RANK_VALUE, USER.USER_NAME, USER.USER_FIRSTNAME, RANK.RANK_NAME, USER.USER_AVATAR, USER.USER_BAN FROM ".$Config["SQL"]["BASE"].".USER INNER JOIN ".$Config["SQL"]["BASE"].".RANK ON USER.USER_RANK_VALUE=RANK_VALUE WHERE USER_ID=? AND USER_RANK_VALUE=?";

		$stmt = $bdd->prepare($req);
		$stmt->execute(array($_SESSION['ID'], $_SESSION['RANK']));
		$donnees = $stmt->fetch(PDO::FETCH_ASSOC);
		if($donnees['USER_BAN'] == 0)
		{
			
			//On affiche les informateion de l'utilisateur (avatar, nom, prenom, rang)
			echo "<div><img src='Images/Avatar/".$donnees['USER_AVATAR']."'><p> " . $donnees['USER_NAME'] . " " . $donnees['USER_FIRSTNAME'] . " (".$donnees['RANK_NAME'].")</p></div>";
		}
		else
		{
			header('location:?PAGE=90');
		}
	}
?>