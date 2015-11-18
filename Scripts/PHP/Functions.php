<?php
	///*******************************************************
	/// Retourne un Bool�en si les $_SESSION sont Sett�e
	///	
	///	$_SESSION['ID']: USER_ID
	///	$_SESSION['RANK'] : RANK_VALUE
	///	$_SESSION['NAME'] : USER_NAME
	///	$_SESSION['FIRSTNAME'] : USER_FIRSTNAME
	///*******************************************************
	
	//V�rifie que l'utilisateur est connect� en renvoyant un bool�en sur l'existances des $_SESSION
	function is_Login()
	{
		return (isset($_SESSION['ID']) && isset($_SESSION['RANK']));
	}
	
?>