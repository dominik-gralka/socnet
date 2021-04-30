<?php include "./header.html" ?>
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