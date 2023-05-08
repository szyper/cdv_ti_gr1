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
    $sql = "SELECT u.id userId, u.firstName, u.lastName, u.birthday, u.created_at ,c.city, s.state FROM `users` u INNER JOIN cities c on u.cities_id = c.id INNER JOIN states s on c.state_id = s.id";
    $result = $conn->query($sql);
    //echo $result->num_rows;
    if (isset($_GET["infoUserDelete"])){
      if ($_GET["infoUserDelete"] == 1){
        echo "<h4>Usunięto rekord</h4>";
      }else{
	      echo "<h4>Nie usunięto rekordu</h4>";
      }
    }
    echo <<< TABLE
      <table>
        <tr>
          <th>Imię</th>
          <th>Nazwisko</th>
          <th>Data urodzenia</th>
          <th>Miasto</th>
        </tr>
      
TABLE;
    if($result->num_rows == 0){
      echo "Brak rekordów do wyświetlenia!";
    }else{
	    while ($user = $result->fetch_assoc()){
		    echo <<< USERS
        <tr>
          <td>$user[firstName]</td>
          <td>$user[lastName]</td>
          <td>$user[birthday]</td>
          <td>$user[city]</td>
          <td><a href="./scripts/delete_user.php?userDeleteId=$user[userId]">Usuń</a></td>
        </tr>
USERS;
	    }
    }

echo "</table>";
	?>

</body>
</html>
