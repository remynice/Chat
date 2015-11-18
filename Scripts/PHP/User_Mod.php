<?php
	$id = $_SESSION['ID'];
	
	$req = "SELECT USER_NAME, USER_FIRSTNAME, USER_PASS, USER_BIRTHDAY, USER_MAIL FROM ".$Config["SQL"]["BASE"].".USER WHERE USER_ID=?";
	$stmt = $bdd->prepare($req);
	
	$stmt->execute(array($id));
	
	$donnees = $stmt->fetch(PDO::FETCH_ASSOC);
	if(isset($_FILES['user_avatar']))
	{
		if($_FILES['user_avatar']['error']>0)
		{
			echo "erreur de chargement...";
		}
		else
		{
			
			$imageError = 0;
			if($_FILES['user_avatar']['size']>200000) $imageError++;
			$tailleImage = getimagesize($_FILES['user_avatar']['tmp_name']);
			if($tailleImage['mime']!=$_FILES['user_avatar']['type']) $imageError++;
			

			
			
			$fileInfo = new finfo(FILEINFO_MIME_TYPE);
			$mime = $fileInfo->file($_FILES['user_avatar']['tmp_name']);
			if($mime<>$_FILES['user_avatar']['type']) $imageError++;

			if($imageError==0)
			{	
				//nom aléatoire
				$nomPhoto = md5(uniqid());
				// récupération de l'extension
				switch($mime)
				{
					case 'image/gif':	$extension = '.gif';
										break;
					case 'image/jpeg':	$extension = '.jpg';
										break;
					case 'image/png':	$extension = '.png';
										break;
					default:			$extension = '.txt';

				}

				$resultat = move_uploaded_file($_FILES['user_avatar']['tmp_name'], 
										   'Images/Avatar/'.$_SESSION['ID'].$extension);
										   
				$req = "UPDATE ".$Config["SQL"]["BASE"].".USER SET USER_AVATAR=? WHERE USER_ID=?";
				$stmt = $bdd->prepare($req);
				$stmt->execute(array($_SESSION['ID'].$extension, $_SESSION['ID']));
			}
			else $resultat = false;
		}
	}
	
	if(isset($_POST['user_name']) && isset($_POST['user_firstname']) && isset($_POST['user_birthday']) && isset($_POST['user_mail']))
	{
		$name = strtoupper(htmlentities(strip_tags($_POST['user_name'])));
		$firstname = strtoupper(substr(htmlentities(strip_tags($_POST['user_firstname'])), 0, 1)) . substr(htmlentities(strip_tags($_POST['user_firstname'])), 1, strlen(htmlentities(strip_tags($_POST['user_firstname']))));
		$birthday = htmlentities(strip_tags($_POST['user_birthday']));
		$mail = htmlentities(strip_tags($_POST['user_mail']));
		
		$req = "UPDATE ".$Config["SQL"]["BASE"].".USER SET USER_NAME=?, USER_FIRSTNAME=?, USER_BIRTHDAY=?, USER_MAIL=? WHERE USER_ID=?";
		$stmt = $bdd->prepare($req);
		
		$stmt->execute(array($name, $firstname, $birthday, $mail, $id));
		
		echo "<script>alert('Profil mis à jour'); </script>";
		header("location:?PAGE=3");
	}
	
	if(isset($_POST['user_oldpassword']) && isset($_POST['user_newpassword1']) && isset($_POST['user_newpassword2']))
	{
		$oldpass = md5(htmlentities(strip_tags($_POST['user_oldpassword'])));
		$newpass1 = md5(htmlentities(strip_tags($_POST['user_newpassword1'])));
		$newpass2 = md5(htmlentities(strip_tags($_POST['user_newpassword2'])));
		
		$req = "SELECT USER_ID FROM ".$Config["SQL"]["BASE"].".USER WHERE USER_ID=? AND USER_PASS=PASSWORD(?)";
		$stmt = $bdd->prepare($req);
		
		$stmt->execute(array($id, $oldpass));
		
		$ligne = $stmt->fetch(PDO::FETCH_ASSOC);
		
		
		if(intval($ligne) == $id)
		{
			if(!empty(htmlentities(strip_tags($_POST['user_newpassword1']))))
			{
				if($newpass1 === $newpass2)
				{
					$req = "UPDATE ".$Config["SQL"]["BASE"].".USER SET USER_PASS=PASSWORD(?) WHERE USER_ID=?";
					$stmt = $bdd->prepare($req);
					
					$stmt->execute(array($newpass1, $id));
					echo "Mot de passe changé";
				}
				else
				{
					echo "Le nouveau mot de passe et sa confirmation, doivent être identique";
				}
			}
			else
			{
				echo "<p>Vous ne pouvez pas avoir un mot de passe nul</p>";
			}
		}
		else
		{
			echo "<p>Le mot de passe actuel ne correspond pas</p>";
		}
	}
	
?>
<fieldset>
	<legend>Informations personnelles</legend>
	<form method="POST">
		<label>Nom : 
			<input type="text" name="user_name" value="<?php echo $donnees['USER_NAME']?>" required>
		</label>		
		<label> Prénom : 
			<input type="text" name="user_firstname" value="<?php echo $donnees['USER_FIRSTNAME']?>" required>
		</label>		
		<label> Date de naissance : 
			<input type="date" name="user_birthday" value="<?php echo $donnees['USER_BIRTHDAY']?>" required>
		</label>
		<label>
			<input type="email" name="user_mail" value="<?php echo $donnees['USER_MAIL']?>" required>
		</label>
		<input type="submit" value="Mettre le profil à jour">
	</form>
</fieldset>
<fieldset>
	<legend>Mot de passe</legend>
	<form method="POST">
		<label>Mot de passe acuel : 
			<input type="password" name="user_oldpassword" required>
		</label>
		<label>Nouveau mot de passe : 
			<input type="password" name="user_newpassword1" required>
		</label>
		<label>Confirmez le nouveau mot de passe : 
			<input type="password" name="user_newpassword2" required>
		</label>
		<input type="submit" value="Changer le mot de passe">
	</form>
</fieldset>
<fieldset>
	<legend>Avatar</legend>
	<form method="POST" enctype="multipart/form-data">
		<label>Image : 
			<input type="FILE" name="user_avatar" required>
		</label>
		<input type="submit" value="Mettre à jour l'avatar">
	</form>
</fieldset>


