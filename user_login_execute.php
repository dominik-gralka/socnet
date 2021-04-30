<html>

<?php

include 'database_login.php';

$fusername = $_POST['username'];
$fpasswort = $_POST['passwort'];
$cookie_name = "user";
$cookie_value = $_POST['username'];

$query = "SELECT username FROM person WHERE username = '$fusername' AND passwort = '$fpasswort'";
$result=mysql_query($query);

if (!$result){
    die("Anmeldung fehlgeschlagen. <br>Sie werden augenblicklich weitergeleitet.");
	header('Refresh: 3; URL=http://localhost/Webservice/socnet/index.php');
}
if (mysql_num_rows($result)==1){
    $row = mysql_fetch_array($result);
	echo "Anmeldung erfolgreich. <br>Sie werden augenblicklich weitergeleitet.";
	header('Refresh: 3; URL=http://localhost/Webservice/socnet/index.php');
	setcookie($cookie_name, $cookie_value, time() + (86400 * 1), "/"); // 86400 = 1 day
    localStorage.setItem("username", $fusername);
}
else{
    echo "Anmeldung fehlgeschlagen. <br>Sie werden augenblicklich weitergeleitet.";
	header('Refresh: 3; URL=http://localhost/Webservice/socnet/index.php');
}






/*if(!isset($_COOKIE[$cookie_name])) {
    echo "Cookie named '" . $cookie_name . "' is not set!";
} else {
    echo "Cookie '" . $cookie_name . "' is set!<br>";
    echo "Value is: " . $_COOKIE[$cookie_name];
}*/


?>

</html>