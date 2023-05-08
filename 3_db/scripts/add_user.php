<?php
session_start();
//	echo "<pre>";
//		print_r($_POST);
//	echo "<pre>";

foreach ($_POST as $key => $value){
	//echo "$key: $value<br>";
	if (empty($value)){
		//echo "$key<br>";
		$_SESSION["error"] = "Wypełnij wszystkie dane!";
		echo "<script>history.back();</script>";
		exit();
	}
}

require_once "./connect.php";
$sql = "INSERT INTO `users` (`cities_id`, `firstName`, `lastName`, `birthday`, `created_at`) VALUES ($_POST[city_id], '$_POST[firstName]', '$_POST[lastName]', '$_POST[birthday]', current_timestamp());";

$conn->query($sql);

//echo $conn->affected_rows;

if ($conn->affected_rows == 1){
	$_SESSION["success"] = "Prawidłowo dodano użytkownika $_POST[firstName] $_POST[lastName]";
}else{
	$_SESSION["success"] = "Nie dodano użytkownika!";
	echo "<script>history.back();</script>";
	exit();
}

header("location: ../3_1_db_select_table_delete_add.php");
