<?php

	$req = "SELECT NEWS_ID, NEWS_TITLE, USER_NAME, USER_FIRSTNAME, NEWS_TIMESTAMP, NEWS_VISIBLE, NEWS_CONTENT FROM ".$Config["SQL"]["BASE"].".NEWS INNER JOIN USER ON NEWS.NEWS_USER_ID=USER.USER_ID ORDER BY NEWS_ID DESC";

	$stmt = $bdd->query($req);
	echo "<div id='accordion'>";
	while($row = $stmt->fetch(PDO::FETCH_ASSOC))
	{
		if($row['NEWS_VISIBLE'] == 1)
		{
			echo "<h3 class='show_news_title'>".$row['NEWS_TITLE']."</h3>";
			echo "<div>";
			echo "<p class='show_news_content'>";
			echo $row['NEWS_CONTENT'];
			echo "</p>";
			echo "<p class='show_news_author'>".$row['USER_NAME']." ". $row['USER_FIRSTNAME'] ."</p>";
			echo "<p class='show_news_time'>". date('d/m/Y H\h:i\m:s\s', $row['NEWS_TIMESTAMP']) ."</p>";
			echo "</div>";
		}
	}
	echo "</div>";
?>

