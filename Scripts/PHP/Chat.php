<?php header('Content-Type: text/html; charset=UTF-8'); ?>
<!-- div contenant tout le chat -->
<div id="chat_conteneur">	
	<!-- div contenant les messages des utilisateurs -->
	<div id="chat"></div>
	<!-- Formulaire d'envoie de message -->
	
	
	<!-- div contenant la liste de tout les utilisateur co-->
	<div class='user_co'>
	
	</div>
</div>
<form id="from_chat" method="POST">
	<textarea name="CHAT_MESSAGE" id="chat_input" required></textarea>
	<input type='hidden' value='<?php if(is_Login()) { echo $_SESSION['ID']; } ?>' name='CHAT_USER_ID'>
	<input type="submit" value="Envoyer" id="btnSubmit">
	<input type="reset" value="reset" id="btnReset">
</form>
