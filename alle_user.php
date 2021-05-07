<?php
include 'database_login.php';
?>
<html lang="de">
	<head><title>socnet - Das soziale Netzwerk</title></head>
	<body>
    <p class="credentials"></p>
    <?php include "./header.html" ?>
    <?php include "./secure/alle_user_execute.php" ?>

	<!--<script type="text/javascript" src="cookiehandler.js"></script>-->


    <!--<script type="text/javascript">
        function getCookie() {
            const value_or_null = (document.cookie.match(/^(?:.*;)?\s*user\s*=\s*([^;]+)(?:.*)?$/) || [, null])[1];
            console.log(value_or_null);
        }
    </script>

    <script>
        getCookie();
    </script>-->

	</body>
</html>
