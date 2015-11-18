<?php
	session_start();
	include_once("Scripts/PHP/Config.php");
?>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		
		<!-- Jquery-UI -->
		<link href="<?php echo $Config["SCRIPT_LINK"]["CSS"]; ?>JQueryUI/jquery-ui.min.css" rel="stylesheet" type="text/css">
		<link href="<?php echo $Config["SCRIPT_LINK"]["CSS"]; ?>JQueryUI/jquery-ui.structure.min.css" rel="stylesheet" type="text/css">
		<link href="<?php echo $Config["SCRIPT_LINK"]["CSS"]; ?>JQueryUI/jquery-ui.theme.min.css" rel="stylesheet" type="text/css">
		
		<!-- BootStrap -->
		<link href="<?php echo $Config["SCRIPT_LINK"]["CSS"]; ?>bootstrap.css" rel="stylesheet" type="text/css"> 

		<!-- ScEditor -->
		<link rel="stylesheet" href="Lib/sceditor/minified/themes/default.min.css" type="text/css" media="all" />
		
		<!-- CSS -->
		<link href="<?php echo $Config["SCRIPT_LINK"]["CSS"]; ?>style.css" rel="stylesheet" type="text/css">
		
		<title>
			Web Force 3 - Intranet
		</title>
		
		<!-- JQuery -->
		<script src="<?php echo $Config["SCRIPT_LINK"]["JS"]; ?>jquery-2.1.4.min.js"></script>
		<!-- JQuery UI -->
		<script src="<?php echo $Config["SCRIPT_LINK"]["JS"]; ?>jquery-ui.min.js"></script>
		
		
		
		
		
		<?php
			if(is_Login())
			{
		?>
				<script type="text/javascript" src="Lib/sceditor/minified/jquery.sceditor.bbcode.min.js"></script>
				<script src="Lib/sceditor/languages/nl.js"></script>
				
				<!-- Site Script -->
				<script src="<?php echo $Config["SCRIPT_LINK"]["JS"]; ?>script.js"></script>
				
		<?php	
			}
		?>
			<script>
				$(function()
				{
					$('#accordion').accordion();
				});
			</script>
	</head>
	<body>
		<!-- Entête de page -->
		<header>
			<h1>Web Force 3</h1>
		</header>
		
		<!-- Contenu -->
		<section>
			
			<div id="all_content">
				<div>
					<nav id="menu">
						<div id="login">
							<?php
								include_once($Config["SCRIPT_LINK"]["PHP"]."Login.php");
							?>
						</div>
						<div id="nav">
							<?php
								include_once($Config["SCRIPT_LINK"]["PHP"]."Menu.php");
							?>
						</div>
						<?php
							if(is_Login())
							{
								include_once($Config["SCRIPT_LINK"]["PHP"]."Chat.php");
							}
						?>
					</nav>
					<div id="content">
						<?php
							include_once($Config["SCRIPT_LINK"]["PHP"]."Main.php");
						?>
					</div>
				</div>
			</div>
			
		</section>
		
		<!-- Bas de page -->
		<footer>
			
		 &copy; Copyright Alcene's Corp 2015
		</footer>
	</body>
<html>