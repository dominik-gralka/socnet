<?php
include 'database_login.php';

// Parameter besorgen
$fname = $_POST['name'];
$fvorname = $_POST['vorname'];
$fusername = $_POST['username'];
$fpasswort = $_POST['passwort'];
$femail = $_POST['email'];

$insert = "insert into person(name, vorname,username,passwort,email) values ('$fname', '$fvorname', '$fusername', '$fpasswort','$femail')";
// echo "F&uuml;hre den Befehl ".$insert." aus.";
$result = mysql_query($insert);

?>
<html>
	<head><title>socnet - Das soziale Netzwerk</title></head>
	<body>
    <?php include "./header.html" ?>
		<br>
		<p>
		Ihr Nutzer: <?php echo $fname; ?> wurde hinzugef&uuml;gt.
		</p>
	</body>
</html>
