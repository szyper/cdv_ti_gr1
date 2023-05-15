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

	//echo $_SERVER["PHP_SELF"];  ///git/cdv/cdv_ti_gr1/3_db/3_1_db_select_table_delete_add_update.php
	//echo __FILE__;  //C:\xampp\htdocs\git\cdv\cdv_ti_gr1\3_db\3_1_db_select_table_delete_add_update.php

	$path = __FILE__;
	$fileName = basename($path);
	// echo $fileName; //3_1_db_select_table_delete_add_update.php

    if (isset($_SESSION["error"])){
	    echo "<h4>".$_SESSION["error"]."</h4>";
      unset($_SESSION["error"]);
    }

    if (isset($_SESSION["success"])){
      echo "<h4>".$_SESSION["success"]."</h4>";
      unset($_SESSION["success"]);
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
          <td><a href="./$fileName?userUpdateId=$user[userId]">Aktualizuj</a></td>
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
        <select name="city_id">
ADDUSERFORM;
        $sql = "SELECT * FROM `cities`";
        $result = $conn->query($sql);
        while ($city = $result->fetch_assoc()){
          echo "<option value='$city[id]'>$city[city]</option>";
        }
echo <<< ADDUSERFORM
        </select><br><br>
        <input type="date" name="birthday"> Data urodzenia<br><br>
        <input type="submit" value="Dodaj użytkownika">
      </form>
ADDUSERFORM;
  }else{
    echo '<br><a href="./3_1_db_select_table_delete_add_update.php?showAddUserForm=1">Dodaj użytkownika</a>';
  }

  //aktualizacja użytkownika
	if (isset($_GET["userUpdateId"])){
    $_SESSION["userUpdateId"] = $_GET["userUpdateId"];
    $sql = "SELECT * FROM users WHERE id=$_GET[userUpdateId]";
    $result = $conn->query($sql);
    $user = $result->fetch_assoc();
		echo <<< UPDATEUSERFORM
      <h4>Aktualizacja użytkownika</h4>
      <form action="./scripts/update_user.php" method="post">
        <input type="text" name="firstName" value="$user[firstName]"><br><br>
        <input type="text" name="lastName" value="$user[lastName]"><br><br>
        <select name="city_id">
UPDATEUSERFORM;
		$sql = "SELECT * FROM `cities`";
		$result = $conn->query($sql);
		while ($city = $result->fetch_assoc()){
      if ($city["id"] == $user["cities_id"])
			  echo "<option value='$city[id]' selected>$city[city]</option>";
      else
	      echo "<option value='$city[id]'>$city[city]</option>";
		}
		echo <<< UPDATEUSERFORM
        </select><br><br>
        <input type="date" name="birthday" value="$user[birthday]"> Data urodzenia<br><br>
        <input type="submit" value="Aktualizuj użytkownika">
      </form>
UPDATEUSERFORM;
	}
	?>
</body>
</html>
