<?php
	include_once($Config["SCRIPT_LINK"]["PHP"]."phpmailer/class.phpmailer.php");
	include_once($Config["SCRIPT_LINK"]["PHP"]."phpmailer/class.smtp.php");	
	if(isset($_POST['mail_login']))
	{
		$login = md5(htmlentities(strip_tags($_POST['mail_login'])));
		
		$token = md5(uniqid());
		
		$req = "SELECT USER_MAIL FROM ".$Config["SQL"]["BASE"].".USER WHERE USER_LOGIN = PASSWORD(?)";
		
		$stmt = $bdd->prepare($req);
		
		$stmt->execute(array($login)) or die($bdd->errorInfo());
		
		$email = $stmt->fetchColumn();
		

		
		if($email !== false)
		{
			$req = "UPDATE ".$Config["SQL"]["BASE"].".USER SET USER_TOKEN = ?, USER_LOST = ? WHERE USER_MAIL = ?";
			$stmt = $bdd->prepare($req);
			
			$stmt->execute(array($token, 1, $email));
			
			
			if($stmt !== false)
			{
				$to = $email;
				$sujet = utf8_decode("[Récupération de mot de passe]");
				$body = "<html>
							<head>
								<style>
									h2
									{
										text-align:center;
										font-family: verdana;
										color: blue;
									}
								</style>
							</head>
							<body>
								<h2>Réinitialisation du mot de passe</h2>
								<p>Vous avez demandé une réinitialisation de mot de passe.</p>
								<p>Cliquez sur le lien ci dessous pour le réinitialiser.</p>
								<a href='http://wf3-h4/?PAGE=70&token=".$token."'>Réinitialiser le mot de passe</a>
							</body>
						</html>";
				
				
				$header = "From: admin-wf3@no-reply.com";
				//Création de l'objet PHPMailer
				$mail = new PHPMailer();
				
				//Format HTML
				$mail->IsHTML(true);
				
				//Connexion au serveur SMTP
				$mail->IsSMTP();
				$mail->Host = 'smtp.orange.fr';
				//Expéditeur
				$mail->From = 'admin-wf3@no-reply.com';
				$mail->FromName = 'Admin WF3 HIRSON';
				//destinataire
				$mail->AddAddress($to);
				//Copie Carbone
				//$mail->AddCC($to);
				//Corp du message
				$mail->Body = utf8_decode($body);
				//Sujet du mail
				$mail->Subject = $sujet;
				
				if(!$mail->Send())
				{
					echo $mail->ErrorInfo;
				}
				else
				{
					echo "Mail de récupération envoyé !";
				}
				//Déconnexion serveur smtp
				$mail->SmtpClose();
				//Destruction de l'objet mail
				unset($mail);
			}			
		}		
	}
?>

<p>Page de récupération de votre mot de passe perdu...</p>
<p>Veuillez saisir votre login et vérifier vos mails</p>
 <fieldset>
	<legend>Récupération de mot de passe</legend>
	 <form method="POST">
		<label>Identifiant :
			<input type="text" name="mail_login">
		</label>
		<p><input type="submit" value="Envoyer"></p>
	 </form>
</fieldset>
 
 