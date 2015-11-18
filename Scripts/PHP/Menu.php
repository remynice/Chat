<?php
	if(isset($_GET['PAGE']) && is_numeric($_GET['PAGE']))
	{
		$req = "SELECT PAGE_NAME, PAGE_LINK, PAGE_INDEX, PAGE_VISIBLE, PAGE_SHOWLOGGED, PAGE_RANK_VALUE FROM ".$Config["SQL"]["BASE"].".PAGE ORDER BY PAGE_INDEX ASC";
		$stmt = $bdd->query($req);
		echo "<form>";
		echo "<ul>";
		while($donnees = $stmt->fetch(PDO::FETCH_ASSOC))
		{
			if($donnees['PAGE_VISIBLE'] == 1)
			{
				if(is_Login())
				{
					if($donnees['PAGE_RANK_VALUE'] <= $_SESSION['RANK'])
					{
						if(($donnees['PAGE_SHOWLOGGED'] == 1) || ($donnees['PAGE_SHOWLOGGED'] == 2))
						{
							echo "<li class='navig'><a href='?PAGE=".$donnees['PAGE_INDEX']."'>".$donnees['PAGE_NAME']."</a></li>";
						}
					}
				}
				else
				{
					if($donnees['PAGE_RANK_VALUE'] == 0)
					{
						if(($donnees['PAGE_SHOWLOGGED'] == 0) || ($donnees['PAGE_SHOWLOGGED'] == 2))
						{
							echo "<li class='navig'><a href='?PAGE=".$donnees['PAGE_INDEX']."'>".$donnees['PAGE_NAME']."</a></li>";
						}
					}
				}
			}
		}
		echo "</ul>";
		echo "</form>";
	}
	else
	{
		header("location:?PAGE=0");
	}
?>