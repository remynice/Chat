<?php
	if(isset($_GET['token']))
	{
		$token = htmlentities(strip_tags($_GET['token']));
		
		if(isset($_POST['token']) && isset($_POST['pass1']) && isset($_POST['pass2']))
		{
			if(strlen($token) === 32)
			{
				$token = htmlentities(strip_tags($_POST['token'])); 
				$pass1 = md5(htmlentities(strip_tags($_POST['pass1']))); 
				$pass2 = md5(htmlentities(strip_tags($_POST['pass2']))); 
				
				if($pass1 === $pass2)
				{
					$req = "SELECT USER_ID FROM ".$Config["SQL"]["BASE"].".USER WHERE USER_TOKEN = ?";
					$stmt = $bdd->prepare($req);
					$stmt->execute(array($token));
					$user_id = $stmt->fetchColumn();
					
					$req = "UPDATE ".$Config["SQL"]["BASE"].".USER SET USER_PASS = PASSWORD(?), USER_LOST = '0', USER_TOKEN='' WHERE USER_TOKEN = ?";
					$stmt = $bdd->prepare($req);
					
					$result = $stmt->execute(array($pass1, $token));
					
					if($result !== false)
					{
						$req = "SELECT USER_ID, USER_RANK_VALUE FROM ".$Config["SQL"]["BASE"].".USER WHERE USER_ID = ?";
						$stmt = $bdd->prepare($req);
						
						$stmt->execute(array($user_id));
						
						$ligne = $stmt->fetch(PDO::FETCH_ASSOC);
						
						$_SESSION['ID'] = $ligne['USER_ID'];
						$_SESSION['RANK'] = $ligne['USER_RANK_VALUE'];
						header("location:?PAGE=0");
					}					
				}
			}
		}
	}
	else
	{
		header("location:?PAGE=0");
	}
	
	
?>

<fieldset>
	<legend>Récupération de mot de passe</legend>
	<form method="POST">
		<label>
			<input type="hidden" name="token" value="<?php echo $token; ?>">
		</label>
		<label>Nouveau mot de passe : 
			<input type="password" name="pass1"> 
		</label>
		<label>(Confirmation) : 
			<input type="password" name="pass2">
		</label>
		<p><input type="submit" value="Modifier le mot de passe"></p>
	</form>
</fieldset>