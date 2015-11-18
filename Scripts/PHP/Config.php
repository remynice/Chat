<?php
	//Tableau de configuration du site
	$Config = array
	(
		//Acces SQL
		"SQL" => array
		(
			"USER" => "WF3",
			"PASS" => "CREMeCq3nmLJpsXG",
			"BASE" => "Perso",
			"HOST" => "localhost",
			"TYPE" => "mysql"
		),
		//Lien des dossiers de Scripts
		"SCRIPT_LINK" => array
		(
			"PHP" => "Scripts/PHP/",
			"JS" => "Scripts/JS/",
			"CSS" => "Scripts/CSS/"
		)
	);
	//On include le fichier contenant les functions utiles
	include_once($Config["SCRIPT_LINK"]["PHP"]."Functions.php");
	//Connexion PDO
	$bdd = new PDO($Config["SQL"]["TYPE"].":hostname=".$Config["SQL"]["HOST"].";dbname=".$Config["SQL"]["BASE"].";charset=utf8", $Config["SQL"]["USER"], $Config["SQL"]["PASS"], array(PDO::ATTR_PERSISTENT => true));
?>