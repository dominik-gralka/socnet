<?php
include 'database_login.php';

// Parameter besorgen
$fid = $_POST['ID'];
$fname = $_POST['name'];
$fvorname = $_POST['vorname'];
$fusername = $_POST['username'];
$fpasswort = $_POST['passwort'];
$femail = $_POST['email'];

mysql_query("DELETE FROM person WHERE p_id = '$fid'")
or die(mysql_error());

$insert = "insert into person(p_id, name, vorname, username, passwort, email) values ('$fid', '$fname', '$fvorname', '$fusername', password('$fpasswort'),'$femail')";
// echo "F&uuml;hre den Befehl ".$insert." aus.";
$result = mysql_query($insert);

?>
<html>
	<head><title>socnet - Das soziale Netzwerk</title></head>
	<body>
	<div class="menu-bar" style="margin-top:1%; margin-bottom:1%;">
		<h1>socnet</h1>
		<a href="../alle_user.php">Nutzer anzeigen</a>
		&nbsp;
		<a href="../user_anlegen.php">Neuen Nutzer anlegen</a>
		&nbsp;
		<a href="../user_edit.php">Nutzer bearbeiten</a>
		&nbsp;
		<a href="../user_delete.php">Nutzer entfernen</a>
		&nbsp;
		<a href="../user_login.php">Anmelden</a>
		&nbsp;
		<a href="../index.php">Zum Hauptverzeichnis</a>
		<hr style="margin-top:2%;">
	</div>
		<br>
		<p>
		Ihr Nutzer: <?php echo $fname; ?> mit der ID <?php echo $fid; ?> wurde aktualisiert.
		</p>
    <script type="text/javascript" src="../javascript/cookiehandler.js"></script>
	</body>
</html>
