<?php
session_start();

include 'database_login.php';

$login = 0;

if(!isset($_SESSION["username"]) and !isset($_GET["page"])) {
    $login = 0;
}
if($_GET["page"] == "log") {

    $nutzer = $_POST["username"];
    $passwort = $_POST["passwort"];

    $query = "SELECT username FROM person WHERE username = '$nutzer' AND passwort = '$passwort'";
    $result=mysql_query($query);

    if(mysql_num_rows($result)==1){
        $_SESSION["username"] = $nutzer;
        $login = 1;
    } else {
        $login = 2;

    }
}
?>
<html>
<head>
    <title>Login</title>
    <?php
    if($login == 1) {
        window.location.replace("http://localhost/Webservice/socnet/index.php");
    }
    ?>
</head>
<body>
<?php
if($login == 0) {
    ?>
    Bitte logge dich ein:<br/>
    <form method_"post" action=index.php?page=log>
                 Nutzername<input type="text" name="nutzer"/><br/>
    Passwort<input type="password" name="passwort"/><br/>
    <input type="submit" value="Einloggen"/>
    </form>
    <?php
}
if($login == 1) {
    ?>
    Du wurdest erfolgreich eingeloggt und wirst nun weitergeleitet!
    <?php
}
if ($login == 2) {
    ?>
    Login fehlgeschlagen, <a href=""index.php">zurück zur Startseite</a>
    <?php
}
?>
</body>
</html>