<?php
	session_start();
	if ($_SERVER["REQUEST_METHOD"] == "POST"){
		//print_r($_POST);
		$errors = [];
		foreach ($_POST as $key => $value){
			//echo "$key: $value<br>";
			if (empty($value)){
				$errors[] = "Wypełnij pole $key";
			}
		}
		if (!empty($errors)){
			$_SESSION["error_message"] = implode("<br>", $errors);
			echo "<script>history.back();</script>";
			exit();
		}



	}
