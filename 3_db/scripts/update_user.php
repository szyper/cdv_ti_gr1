<?php
session_start();
foreach ($_POST as $key => $value){
	if (empty($value)){
		$_SESSION["error"] = "Wypełnij wszystkie dane!";
		echo "<script>history.back();</script>";
		exit();
	}
}

require_once "./connect.php";
$sql = "UPDATE `users` SET `cities_id` = '$_POST[city_id]', `firstName` = '$_POST[firstName]', `lastName` = '$_POST[lastName]', `birthday` = '$_POST[birthday]' WHERE `users`.`id` = $_SESSION[userUpdateId];";

$conn->query($sql);

//echo $conn->affected_rows;

if ($conn->affected_rows == 1){
	$_SESSION["success"] = "Prawidłowo zaktualizowano użytkownika $_POST[firstName] $_POST[lastName]";
}else{
	$_SESSION["success"] = "Nie zaktualizowano użytkownika!";
	echo "<script>history.back();</script>";
	exit();
}

header("location: ../3_1_db_select_table_delete_add_update.php");
