<?php
	session_start();
	if ($_SERVER["REQUEST_METHOD"] == "POST"){
		//print_r($_POST);
		$fields_required = ["firstName", "lastName", "email", "confirm_email", "pass", "confirm_pass", "birthday"];
		$errors = [];
		foreach ($fields_required as $value){
			if (empty($_POST[$value])){
				//echo "$value<br>";
				$errors[] = "Pole <b>$value</b> jest wymagane";
			}
		}

		if (!isset($_POST["terms"]))
			$errors[] = "Zatwierdź regulamin";

		//print_r($errors);

		if ($_POST["email"] != $_POST["confirm_email"]){
			$errors[] = "Adresy email muszą być identyczne";
		}

		if ($_POST["pass"] != $_POST["confirm_pass"]){
			$errors[] = "Hasła muszą być identyczne";
		}

		if ($_POST["additional_email"] != $_POST["confirm_additional_email"]){
			$errors[] = "Dodatkowe adresy email muszą być identyczne";
		}

		if (!empty($errors)){
			//$error_message = implode(", ", $errors);
			$_SESSION["error_message"] = implode("<br>", $errors);
			//echo $error_message;
			echo "<script>history.back();</script>";
		}

	}

