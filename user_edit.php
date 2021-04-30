<?php
include 'database_login.php';
?>
<html>
	<head><title>socnet - Das soziale Netzwerk</title></head>
	<body>
    <?php include "./header.html" ?>
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
    <script type="text/javascript" src="cookiehandler.js"></script>
	</body>
</html>
