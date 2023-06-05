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

		require_once "./connect.php";
		$sql = "SELECT * FROM users WHERE email=:email";
		$sth = $dbh->prepare($sql);
		$sth->bindParam(':email', $_POST["email"], PDO::PARAM_STR);
		//echo $sth->queryString;
		$sth->execute();

		//echo $sth->rowCount();

		if ($sth->rowCount() == 1){
//				$result = $sth->fetch(PDO::FETCH_ASSOC);
//				print_r($result);
			$result = $sth->fetchAll(pdo::FETCH_ASSOC);
			//print_r($result);
//			print_r($result[0]["password"]);

			if (password_verify($_POST["pass"], $result[0]["password"])){
//				echo "prawidłowe hasło";
					$_SESSION["logged"]["firstName"] = $result[0]["firstName"];
					$_SESSION["logged"]["lastName"] = $result[0]["lastName"];
					$_SESSION["logged"]["session_id"] = session_id();
					//print_r($_SESSION["logged"]);
					header("location: ../pages/view/logged.php");
			}else{
				$_SESSION["error_message"] = "Błędny login lub hasło!";
				echo "<script>history.back();</script>";
				exit();
			}
		}else{
//			echo "email nie istnieje w bazie";
			$_SESSION["error_message"] = "Błędny login lub hasło!";
			echo "<script>history.back();</script>";
			exit();
		}


	}
