<?php
include 'database_login.php';
?>
<html lang="de">
	<head><title>socnet - Das soziale Netzwerk</title></head>
	<body onload="getCookie()">
	<div class="menu-bar" style="margin-top:1%; margin-bottom:1%;">
		<h1>socnet</h1>
        <p id="credentials">Anmeldung ausstehend</p>
		<a href="alle_user.php">Nutzer anzeigen</a>
		&nbsp;
		<a href="user_anlegen.php">Neuen Nutzer anlegen</a>
		&nbsp;
		<a href="user_edit.php">Nutzer bearbeiten</a>
		&nbsp;
		<a href="delete_user.php">Nutzer entfernen</a>
		&nbsp;
		<a href="index.php">Zum Hauptverzeichnis</a>
		<hr style="margin-top:2%;">
	</div>
		<br>
		<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Vorname</th>
			<th>Nutzername</th>
			<th>E-Mail</th>
			<th>Passwort</th>
		</tr>

			<?php
			$select = "select p_id, name, vorname, username, passwort, email from person";
			$result = mysql_query($select);
			while ($daten = mysql_fetch_array($result))
			{
				echo "<tr>";
				echo "<td>".$daten['p_id']."</td>";
				echo "<td>".$daten['name']."</td>";
				echo "<td>".$daten['vorname']."</td>";
				echo "<td>".$daten['username']."</td>";
				echo "<td>".$daten['email']."</td>";
				echo "<td>".$daten['passwort']."</td>";
				echo "</tr>";
			}
			?>

		</table>

	<!--<script type="text/javascript" src="cookie.js"></script>-->

    <script type="text/javascript">
        function getCookie (name,value) {
            if(document.cookie.indexOf(name) == 0)
                return -1<document.cookie.indexOf(value?name+"="+value+";":name+"=")
                console.log('1');
            else if(value && document.cookie.indexOf("; "+name+"="+value) + name.length + value.length + 3== document.cookie.length) //match without an ending ';' if its the last
                return true
                console.log('2');
            else { //match cookies in the middle with 2 ';' if you want to check for a value
                return -1<document.cookie.indexOf("; "+(value?name+"="+value + ";":name+"="))
                console.log('3');
            }
        }
        //getCookie("user") //false
        getCookie("__user" ) //true
    </script>

	</body>


</html>
