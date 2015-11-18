<?php
	///*******************************************************
	/// Retourne un Booléen si les $_SESSION sont Settée
	///	
	///	$_SESSION['ID']: USER_ID
	///	$_SESSION['RANK'] : RANK_VALUE
	///	$_SESSION['NAME'] : USER_NAME
	///	$_SESSION['FIRSTNAME'] : USER_FIRSTNAME
	///*******************************************************
	
	//Vérifie que l'utilisateur est connecté en renvoyant un booléen sur l'existances des $_SESSION
	function is_Login()
	{
		return (isset($_SESSION['ID']) && isset($_SESSION['RANK']));
	}
	
?>