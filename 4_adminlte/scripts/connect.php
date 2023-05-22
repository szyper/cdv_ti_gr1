<?php
	//echo "db connect";
	$conn = new mysqli("localhost", "root", "", "cdv_gr_1_register");

	//echo $conn->connect_errno; //0

$host = 'localhost';
$dbname = 'cdv_gr_1_register';
$username = 'testpdo';
$password = 'NUAbY2BJ(mVUy-jj';

try {
	// Tworzenie obiektu PDO i nawiązanie połączenia z bazą danych
	$dbh = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);

	// Ustawienie opcji dla PDO
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	echo "Połączenie z bazą danych zostało ustanowione.";

} catch (PDOException $e) {
	echo "Wystąpił błąd podczas nawiązywania połączenia: " . $e->getMessage();
}