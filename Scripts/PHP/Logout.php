<?php
	//Si l'utilisateur est connecté
	if(is_Login())
	{
		//On détruit réinitialise les $_SESSION à null (déconnecte l'utilisateur)
		$_SESSION['ID'] = null;
		$_SESSION['RANK'] = null;
		//On redirige l'utilisateur non connecté a l'accueil
		header("location:?PAGE=0");
	}
?>