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
        function getCookie(user) {
            var dc = document.cookie;
            var prefix = user + "=";
            var begin = dc.indexOf("; " + prefix);
            if (begin == -1) {
                begin = dc.indexOf(prefix);
                if (begin != 0) return null;
            }
            else
            {
                begin += 2;
                var end = document.cookie.indexOf(";", begin);
                if (end == -1) {
                    end = dc.length;
                }
            }
            // because unescape has been deprecated, replaced with decodeURI
            //return unescape(dc.substring(begin + prefix.length, end));
            return decodeURI(dc.substring(begin + prefix.length, end));
        }

        function doSomething() {
            var usercookie = getCookie("MyCookie");

            if (usercookie == null) {
                // do cookie doesn't exist stuff;
                console.log('Cookie existiert nicht.');
            }
            else {
                console.log('Cookie existiert.')
                // do cookie exists stuff
            }
        }
    </script>

	</body>


</html>
