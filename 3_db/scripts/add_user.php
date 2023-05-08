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

echo "ok";