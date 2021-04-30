<?php
include 'database_login.php';

// Parameter besorgen
$fid = $_POST['ID'];
$fname = $_POST['name'];
$fvorname = $_POST['vorname'];
$fusername = $_POST['username'];
$fpasswort = $_POST['passwort'];
$femail = $_POST['email'];

mysql_query("DELETE FROM person WHERE p_id = '$id'")
or die(mysql_error());

$insert = "insert into person(p_id, name, vorname, username, passwort, email) values ('$fid', '$fname', '$fvorname', '$fusername', password('$fpasswort'),'$femail')";
echo "F&uuml;hre den Befehl ".$insert." aus.";
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
    <script type="text/javascript" src="javascript/cookiehandler.js"></script>
	</body>
</html>
