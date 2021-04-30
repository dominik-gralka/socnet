<?php
include 'database_login.php';
?>
<html>
	<head><title>socnet - Das soziale Netzwerk</title></head>
	<body>
	<div class="menu-bar" style="margin-top:1%; margin-bottom:1%;">
		<h1>socnet</h1>
		<a href="alle_user.php">Nutzer anzeigen</a>
		&nbsp;
		<a href="user_anlegen.php">Neuen Nutzer anlegen</a>
		&nbsp;
		<a href="user_edit.php">Nutzer bearbeiten</a>
		&nbsp;
		<a href="user_delete.php">Nutzer entfernen</a>
		&nbsp;
		<a href="user_login.php">Anmelden</a>		
		&nbsp;
		<a href="index.php">Zum Hauptverzeichnis</a>		
		<hr style="margin-top:2%;">
	</div>
		<br>
		<form action="user_edit_execute.php" method="post">
			<p>ID des zu editierenden Nutzers:<br><input name="ID" type="text" size="40"></p>
			<p>Name:<br><input name="name" type="text" size="40" ></p>
			<p>Vorname:<br><input name="vorname" type="text" size="40"></p>
			<p>Nutzername:<br><input name="username" type="text" size="40"></p>
			<p>E-Mail:<br><input name="email" type="email" size="40"></p>
			<p>Passwort:<br><input name="passwort" type="password" size="40"></p>
			<br><br>
			<input type="submit" value="Aktualisieren">
		</form>
    <script type="text/javascript" src="cookie.js"></script>
	</body>
</html>
