<?php

	//Si tout les champs sont rtemplis
	if(isset($_POST['LOGIN']) && isset($_POST['PASS1']) && isset($_POST['PASS2']) && isset($_POST['NAME']) && isset($_POST['FIRSTNAME']) && isset($_POST['BIRTHDAY']) && isset($_POST['MAIL']))
	{	
		//On stoque et sécurise les champs dans des variables
		$login = md5(htmlentities(strip_tags($_POST['LOGIN'])));
		$pass1 = md5(htmlentities(strip_tags($_POST['PASS1'])));
		$pass2 = md5(htmlentities(strip_tags($_POST['PASS2'])));
		$name = strtoupper(htmlentities(strip_tags($_POST['NAME'])));
		$firstname = strtoupper(substr(htmlentities(strip_tags($_POST['FIRSTNAME'])), 0, 1)) . substr(htmlentities(strip_tags($_POST['FIRSTNAME'])), 1, strlen(htmlentities(strip_tags($_POST['FIRSTNAME']))));
		$birthday = htmlentities(strip_tags($_POST['BIRTHDAY']));
		$mail = htmlentities(strip_tags($_POST['MAIL']));
		$ip = $_SERVER['REMOTE_ADDR'];
		//Si les deux mots de passe tapés sont égaux
		if($pass1 === $pass2)
		{
			$req = "SELECT USER_ID FROM ".$Config["SQL"]["BASE"].".USER WHERE USER_LOGIN=PASSWORD(?) AND USER_PASS=PASSWORD(?) OR USER_IP=?";

			$stmt = $bdd->prepare($req);
			$stmt->execute(array($login, $pass1, $_SERVER['REMOTE_ADDR']));
			$ligne = $stmt->fetchColumn();
			
			//Si $name est non nul
			if(!empty($name))
			{
				//Si $firstname est non nul
				if(!empty($firstname))
				{
					//Si il existe aucunes ligne
					if(intval($ligne) === 0)
					{	
						$req = "INSERT INTO ".$Config["SQL"]["BASE"].".USER (USER_LOGIN, USER_PASS, USER_NAME, USER_FIRSTNAME, USER_BIRTHDAY, USER_MAIL, USER_IP, USER_RANK_VALUE, USER_AVATAR) VALUES (PASSWORD(?), PASSWORD(?), ?, ?, ?, ?, ?, ?, ?)";
						$stmt = $bdd->prepare($req);
						$stmt->execute(array($login, $pass1, $name, $firstname, $birthday, $mail, $ip, 1, 'Default.jpg'));
						
						
						$req = "SELECT USER_ID, USER_RANK_VALUE, USER_NAME, USER_FIRSTNAME FROM ".$Config["SQL"]["BASE"].".USER WHERE USER_LOGIN=PASSWORD(?) AND USER_PASS=PASSWORD(?) AND USER_IP=?";

						$stmt = $bdd->prepare($req);
						$stmt->execute(array($login, $pass1, $ip));
						$ligne = $stmt->fetch(PDO::FETCH_ASSOC);
						//Si une seule ligne à était trouvée
						if(intval($ligne) === 1)
						{
							//Si le compte est correctement crée, alors on connecte la personne
							$_SESSION['ID'] = $ligne['USER_ID'];
							$_SESSION['RANK'] = $ligne['USER_RANK_VALUE'];
							header("location:?PAGE=0");
						}
					}
					else
					{
						echo "<p>Vous ne pouvez pas créer plusieurs comptes.</p>";
					}
				}
			}
		}
	}
	else
	{
?>
		<form method="POST">
			<label>Identifiant : 
				<input type="TEXT" name="LOGIN">
			</label>
			<label>Mot de passe : 
				<input type="PASSWORD" name="PASS1">
			</label>
			<label>(Confirmation) : 
				<input type="PASSWORD" name="PASS2">
			</label>
			<label>Nom : 
				<input type="TEXT" name="NAME">
			</label>
			<label>Prénom : 
				<input type="TEXT" name="FIRSTNAME">
			</label>
			<label>Date de naissance : 
				<input type="DATE" name="BIRTHDAY">
			</label>
			<label>Em@il : 
				<input type="EMAIL" name="MAIL">
			</label>
			<input type="SUBMIT" value="S'enregistrer">
		</form>
<?php
	}
?>