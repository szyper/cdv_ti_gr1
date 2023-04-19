<!doctype html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>
</head>
<body>
	<h4>Tabela users</h4>
	<?php
		require_once "./scripts/connect.php";
    $sql = "SELECT u.firstName, u.lastName, u.birthday, u.created_at ,c.city, s.state FROM `users` u INNER JOIN cities c on u.cities_id = c.id INNER JOIN states s on c.state_id = s.id";
    $result = $conn->query($sql);
    while ($user = $result->fetch_assoc()){
      //echo $user["firstName"]."<br>";
      echo <<< USERS
        Imię i nazwisko: $user[firstName] $user[lastName], data urodzenia: $user[birthday]
        <br> Miasto: $user[city], województwo: $user[state]<br>
        Data utworzenia użytkownika: $user[created_at]
        <hr>
USERS;

    }

	?>
</body>
</html>
