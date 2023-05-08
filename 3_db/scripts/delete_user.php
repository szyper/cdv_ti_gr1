<?php
	//echo $_GET["userDeleteId"];
	if (isset($_GET["userDeleteId"])){
		require_once "./connect.php";
		$sql = "DELETE FROM `users` WHERE `users`.`id` = $_GET[userDeleteId]";
//		$sql = "DELETE FROM `users` WHERE `users`.`id` = 1";
//		$sql = "DELETE FROM `users` WHERE `users`.`lastName` = 'Nowak'";
		$conn->query($sql);
//		echo $conn->affected_rows;
		if ($conn->affected_rows != 0){
			header("location: ../3_1_db_select_table_delete_add.php?infoUserDelete=1");
		}else{
			header("location: ../3_1_db_select_table_delete_add.php?infoUserDelete=0");
		}
	}else{
		echo "<script>history.back();</script>";
	}