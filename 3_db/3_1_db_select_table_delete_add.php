<?php
  session_start();
?>
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
    if (isset($_SESSION["error"])){
	    echo $_SESSION["error"];
      unset($_SESSION["error"]);
    }
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
      echo "<tr><td colspan='4'>Brak rekordów do wyświetlenia!</td></tr>";
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
  if (isset($_GET["showAddUserForm"])){
    echo <<< ADDUSERFORM
      <h4>Dodawanie użytkownika</h4>
      <form action="./scripts/add_user.php" method="post">
        <input type="text" name="firstName" placeholder="Podaj imię"><br><br>
        <input type="text" name="lastName" placeholder="Podaj nazwisko"><br><br>
        <input type="number" name="city_id" placeholder="Podaj id miasta"><br><br>
        <input type="date" name="birthday"> Data urodzenia<br><br>
        <input type="submit" value="Dodaj użytkownika">
      </form>
ADDUSERFORM;
  }else{
    echo '<br><a href="./3_1_db_select_table_delete_add.php?showAddUserForm=1">Dodaj użytkownika</a>';
  }
	?>
</body>
</html>
