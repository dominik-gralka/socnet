<?php
include 'database_login.php';
?>
<html>
	<head><title>socnet - Das soziale Netzwerk</title></head>
	<body>
    <?php include "./header.html" ?>
		<br>
		<form action="user_hinzufuegen.php" method="post">
			<p>Name:<br><input name="name" type="text" size="40" ></p>
			<p>Vorname:<br><input name="vorname" type="text" size="40"></p>
			<p>Nutzername:<br><input name="username" type="text" size="40"></p>
			<p>E-Mail:<br><input name="email" type="email" size="40"></p>
			<p>Passwort:<br><input name="passwort" type="password" size="40"></p>
			<br><br>
			<input type="submit" value="Eintragen">
		</form>
	</body>
</html>
