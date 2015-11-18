<?php
	session_start();
	$Config = array
	(
		"SQL" => array
		(
			"USER" => "WF3",
			"PASS" => "CREMeCq3nmLJpsXG",
			"BASE" => "Perso",
			"HOST" => "localhost",
			"TYPE" => "mysql"
		),
		"SCRIPT_LINK" => array
		(
			"PHP" => "Scripts/PHP/",
			"JS" => "Scripts/JS/",
			"CSS" => "Scripts/CSS/"
		)
	);
	
	$bddInsert = new PDO($Config["SQL"]["TYPE"].":hostname=".$Config["SQL"]["HOST"].";dbname=".$Config["SQL"]["BASE"].";charset=utf8", $Config["SQL"]["USER"], $Config["SQL"]["PASS"], array(PDO::ATTR_PERSISTENT => true));
	
	
	if(isset($_SESSION['ID']) && isset($_POST['CHAT_MESSAGE']))
	{
		if(!empty($_POST['CHAT_MESSAGE']))
		{
			$req = "SELECT CHAT_TIMESTAMP FROM ".$Config["SQL"]["BASE"].".CHAT WHERE CHAT_USER_ID=? ORDER BY CHAT_ID DESC LIMIT 1";
			$stmt = $bddInsert->prepare($req);
			$stmt->execute(array($_SESSION['ID']));
			$donnees = $stmt->fetch(PDO::FETCH_ASSOC);
			$AntiSpam = time() - intval($donnees['CHAT_TIMESTAMP']);
			if($AntiSpam >= 1)
			{
				$id = htmlentities(strip_tags($_SESSION['ID']));		
				$message = strip_tags($_POST['CHAT_MESSAGE']);
				
				$touser = strpos($message, '@');
				
				if($touser !== false)
				{
				
					$req = "SELECT USER_ID FROM ".$Config["SQL"]["BASE"].".USER WHERE USER_PSEUDO=?";
					$stmt = $bddInsert->prepare($req);
					$stmt->execute(array(substr($message, $touser+1, 2)));
					
					$user = $stmt->fetchColumn();
					var_dump(substr($message, $touser+1, 2));
					$req = "INSERT INTO ".$Config["SQL"]["BASE"].".CHAT (CHAT_USER_ID, CHAT_MESSAGE, CHAT_TIMESTAMP, CHAT_TO_USER_ID) VALUES (?, ?, ?, ?)";
					$stmt = $bddInsert->prepare($req);
					$stmt->execute(array($id, $message, time(), $user));
					
				}
				else
				{
					$req = "INSERT INTO ".$Config["SQL"]["BASE"].".CHAT (CHAT_USER_ID, CHAT_MESSAGE, CHAT_TIMESTAMP) VALUES (?, ?, ?)";
					$stmt = $bddInsert->prepare($req);
					$stmt->execute(array($id, $message, time()));
				}
			}
		}
	}
	
?>