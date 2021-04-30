<?php
include 'database_login.php';
?>
<html lang="de">
	<head><title>socnet - Das soziale Netzwerk</title></head>
	<body onload="getCookie()">
    <?php include "./header.html" ?>
	<!--	<br>
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

		</table>-->

	<!--<script type="text/javascript" src="cookie.js"></script>-->

    <script type="text/javascript">
        function getCookie() {
            var cookieName = 'user';
            var name = cookieName + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i].trim();
                if ((c.indexOf(name)) == 0) {
                    console.log("Anmeldung erfolgreich.");
                    <?php include "./secure/alle_user_execute.php" ?>
                    return c.substr(name.length);
                }

            }
            console.log("Anmeldung fehlgeschlagen.");
            document.getElementById('credentials').innerHTML = 'Nicht angemeldet'
            return null;
        }

        function readCookie(name)
        {
            var re = new RegExp(name + "=([^;]+)");
            var value = re.exec(document.cookie);
            return (value != null) ? unescape(value[1]) : null;
        }
    </script>

	</body>


</html>
