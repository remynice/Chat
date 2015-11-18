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
	
	$bddGet = new PDO($Config["SQL"]["TYPE"].":hostname=".$Config["SQL"]["HOST"].";dbname=".$Config["SQL"]["BASE"].";charset=utf8", $Config["SQL"]["USER"], $Config["SQL"]["PASS"], array(PDO::ATTR_PERSISTENT => true));
	
	if(!isset($_POST['chat_id']))
	{
		$req = "SELECT CHAT_ID FROM ".$Config["SQL"]["BASE"].".CHAT ORDER BY CHAT_ID DESC";
		$stmt = $bddGet->query($req);
		
		$id = ceil(intval($stmt->fetchColumn()) / 2);
	}
	else
	{
		$id = intval($_POST['chat_id']);
	}
	
	
	
	$req = "SELECT CHAT.CHAT_ID, CHAT.CHAT_MESSAGE, CHAT.CHAT_TIMESTAMP, USER.USER_NAME, USER.USER_FIRSTNAME, USER.USER_AVATAR, USER.USER_PSEUDO, USER.USER_ID FROM ".$Config["SQL"]["BASE"].".CHAT INNER JOIN ".$Config["SQL"]["BASE"].".USER ON CHAT.CHAT_USER_ID=USER.USER_ID WHERE (CHAT.CHAT_TO_USER_ID=0 OR CHAT.CHAT_USER_ID=".$_SESSION['ID']." OR CHAT.CHAT_TO_USER_ID=".$_SESSION['ID'].") AND CHAT.CHAT_ID > ".$id." ORDER BY CHAT.CHAT_ID DESC";
	$stmt = $bddGet->query($req);
	$row = $stmt->fetchALL(PDO::FETCH_ASSOC);
	$_SESSION['TIMESTAMP'] = time();
	//Renvoie un tableau exploitable en JSON
	echo json_encode($row);
?>