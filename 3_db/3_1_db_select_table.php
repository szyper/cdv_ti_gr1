<!doctype html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="./style/table.css">
	<title>Document</title>
</head>
<body>
	<h4>Tabela users</h4>
	<?php
		require_once "./scripts/connect.php";
    $sql = "SELECT u.firstName, u.lastName, u.birthday, u.created_at ,c.city, s.state FROM `users` u INNER JOIN cities c on u.cities_id = c.id INNER JOIN states s on c.state_id = s.id";
    $result = $conn->query($sql);
    echo <<< TABLE
      <table>
        <tr>
          <th>Imię</th>
          <th>Nazwisko</th>
          <th>Data urodzenia</th>
          <th>Miasto</th>
        </tr>
      
TABLE;

    while ($user = $result->fetch_assoc()){
      echo <<< USERS
        <tr>
          <td>$user[firstName]</td>
          <td>$user[lastName]</td>
          <td>$user[birthday]</td>
          <td>$user[city]</td>
        </tr>
USERS;

    }
echo "</table>";
	?>
</body>
</html>
