<?php

	//Si PAGE est non null et numéric
	if(isset($_GET['PAGE']) && is_numeric($_GET['PAGE']))
	{
		//On récupère les pages disponnible en base de données
		$req = "SELECT PAGE_NAME, PAGE_LINK, PAGE_INDEX, PAGE_VISIBLE, PAGE_SHOWLOGGED, PAGE_RANK_VALUE FROM ".$Config["SQL"]["BASE"].".PAGE";
		$stmt = $bdd->query($req);
		while($donnees = $stmt->fetch(PDO::FETCH_ASSOC))
		{
			if($_GET['PAGE'] == $donnees['PAGE_INDEX'])
			{
				if(is_Login())
				{
					if($_SESSION['RANK'] >= $donnees['PAGE_RANK_VALUE'])
					{
						if(($donnees['PAGE_SHOWLOGGED'] == 1) || ($donnees['PAGE_SHOWLOGGED'] == 2))
						{
							include_once($Config["SCRIPT_LINK"]["PHP"].$donnees['PAGE_LINK']);
						}
					}
				}
				else
				{
					if($donnees['PAGE_RANK_VALUE'] == 0)
					{
						if(($donnees['PAGE_SHOWLOGGED'] == 0) || ($donnees['PAGE_SHOWLOGGED'] == 2))
						{
							include_once($Config["SCRIPT_LINK"]["PHP"].$donnees['PAGE_LINK']);
						}
					}
				}
			}
		}
	}
	else
	{
		header("location:?PAGE=0");
	}
	
	unset($bddInsert);
?>