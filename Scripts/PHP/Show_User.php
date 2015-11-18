<?php
	session_start();
	//Tableau de configuration SQL et Repertoire Scripts
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
	
	//On Inclut les fonction utiles au scripts
	include_once("Functions.php");
	//Connexion permanate à la base SQL avec PDo
	$bdd = new PDO($Config["SQL"]["TYPE"].":hostname=".$Config["SQL"]["HOST"].";dbname=".$Config["SQL"]["BASE"].";charset=utf8", $Config["SQL"]["USER"], $Config["SQL"]["PASS"], array(PDO::ATTR_PERSISTENT => true));

	
	//Si l'utilisateur est connecté (Fonction disponnibole dans Functions.php)
	if(is_Login())
	{
		//On définit le temps de check des connectés sur le chat a 10 secondes
		$timestamp_10min = time() - (10);
		//Requete qui permet de lister les utilisateur présent dans la table USER_CO
		$req = "SELECT COUNT(*) AS nbre_entrees FROM ".$Config["SQL"]["BASE"].".USER_CO WHERE USER_CO_SESSION_ID=?";
		//On prépare la requete
		$stmt = $bdd->prepare($req);
		//On execute la requete en lui passant les parametre qui remplacerons les ?
		$stmt->execute(array($_SESSION['ID']));
		//On met dans $donnees le tableau associatif du résultat de la requete
		$donnees = $stmt->fetch(PDO::FETCH_ASSOC);
		
		if ($donnees['nbre_entrees'] == 0) // L'IP ne se trouve pas dans la table, on va l'ajouter.
		{
			$req = "INSERT INTO ".$Config["SQL"]["BASE"].".USER_CO (USER_CO_SESSION_ID, USER_CO_TIMESTAMP) VALUES (?, ?)";
			$stmt = $bdd->prepare($req);
			$stmt->execute(array($_SESSION['ID'], time()));
			
		}
		else // L'IP se trouve déjà dans la table, on met juste à jour le timestamp.
		{
			
			$req = "UPDATE ".$Config["SQL"]["BASE"].".USER_CO SET USER_CO_TIMESTAMP=? WHERE USER_CO_SESSION_ID= ?";
			$stmt = $bdd->prepare($req);
			$stmt->execute(array(time(), $_SESSION['ID']));
		}
		
		
		$req = "DELETE FROM ".$Config["SQL"]["BASE"].".USER_CO WHERE USER_CO_TIMESTAMP < ?";
		$stmt = $bdd->prepare($req);
		$stmt->execute(array($timestamp_10min));
	}
		
	$req = "SELECT USER_NAME, USER_FIRSTNAME, USER_AVATAR FROM ".$Config["SQL"]["BASE"].".USER_CO INNER JOIN USER ON USER_ID=USER_CO_SESSION_ID WHERE USER.USER_RANK_VALUE <= 80 ORDER BY USER.USER_NAME";
	$stmt = $bdd->query($req);
	$donnees = $stmt->fetchALL(PDO::FETCH_ASSOC);

	echo json_encode($donnees);
?>