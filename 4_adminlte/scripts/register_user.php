<?php
	session_start();

	function filterInput($input){
		$input = htmlspecialchars(addslashes(trim($input)));
		return $input;
	}

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

		if (!isset($_POST["terms"]))
			$errors[] = "Zatwierdź regulamin";

		//$test = "tEst1-";
		if (!preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()-_=+{};:,<.>])(?!.*\s).{4,}$/', $_POST["pass"])){
			$errors[] = "Hasło nie spełnia wymagań";
		}

		if (!empty($errors)){
			//$error_message = implode(", ", $errors);
			$_SESSION["error_message"] = implode("<br>", $errors);
			//echo $error_message;
			echo "<script>history.back();</script>";
			exit();
		}

		//echo $_POST["email"];
		//$email =  filter_var("test@o<b>2</b>.pl", FILTER_SANITIZE_EMAIL);
		$email =  filter_var($_POST["email"], FILTER_SANITIZE_EMAIL);
		//echo $email;

		//echo $_POST["firstName"]; //Krystyna\'
		//echo "<br>".addslashes($_POST["firstName"]);
		//echo "<br>".htmlspecialchars($_POST["firstName"]); //K<b>ry</b><u>sty</u>na
		//echo "<br>".htmlentities($_POST["firstName"]); //K<b>ry</b><u>sty</u>na
		//$firstName = htmlspecialchars($_POST["firstName"], ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8');
		//echo "<br>$firstName";

//		$name = "Bąk";
//		echo strlen($name); //4
//		echo mb_strlen($name, "UTF-8"); //3
//		$name = " Bąk  ";
//		echo mb_strlen($name, "UTF-8"); //6
//		echo mb_strlen(trim($name), "UTF-8"); //3

//			$tab = array(
//				"name" => "Janusz",
//				"surname" => "Nowak"
//			);
//
//			$tab1 = [
//				"name" => "Janusz",
//				"surname" => "Nowak"
//			];
//
//			foreach ($tab as $key => $value){
//				//echo "$key: $value<br>";
//				$$key = $value;
//			}
//			echo $surname;

				foreach ($_POST as $key => $value){
					if ($key != "pass" && $key != "confirm_pass" && $key != "cities_id" && $key != "terms")
						$$key = filterInput($value);
				}
				//echo $firstName;

				$pass = password_hash($_POST["pass"], PASSWORD_ARGON2ID);

				require_once "./connect.php";
				$sql = 'INSERT INTO `users` (`cities_id`, `email`, `additional_email`, `firstName`, `lastName`, `birthday`, `password`) VALUES (:city, :email, :additional_email, :firstName, :lastName, :birthday, :pass);';
				
				$sth = $dbh->prepare($sql);
				$sth->bindParam(':city', $_POST["cities_id"], PDO::PARAM_INT);
				$sth->bindParam(':email', $email, PDO::PARAM_STR);
				$sth->bindParam(':additional_email', $additional_email, PDO::PARAM_STR);
				$sth->bindParam(':firstName', $firstName, PDO::PARAM_STR);
				$sth->bindParam(':lastName', $lastName, PDO::PARAM_STR);
				$sth->bindParam(':birthday', $birthday, PDO::PARAM_STR);

				$sth->bindParam(':pass', $pass, PDO::PARAM_STR);

		try {
			$sth->execute();
			echo "dodano rekord";
			//echo $sth->rowCount();
			if ($sth->rowCount() == 1){
				$_SESSION["success"] = "Prawidłowo dodano użytkownika $_POST[firstName] $_POST[lastName]";
			}
			header("location: ../pages/view");
			exit();
		}catch (PDOException $e){
			//echo $e->getMessage();
			//print_r($e);
			//echo $e->errorInfo[2];
			//echo $sth->rowCount();
			$_SESSION["error_message"] = "Nie dodano użytkownika: ".$e->errorInfo[2];
			echo "<script>history.back();</script>";
		}
	}