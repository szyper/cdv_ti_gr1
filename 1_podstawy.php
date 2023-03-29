<!doctype html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>
</head>
<body>
<?php
  $firstName = "Janusz";
  $lastName = "Nowak";
	echo "Imię i nazwisko: $firstName $lastName<br>";
	echo 'Imię i nazwisko: $firstName $lastName<br>';

  //heredoc
  echo <<< TEXT
    <br>
    Imię i nazwisko: $firstName $lastName
    <hr>
TEXT;

$text = <<< TEXT
    <br>
    Imię i nazwisko: $firstName $lastName
    <hr>
TEXT;

echo $text;

//nowdoc
echo <<< 'TEXT'
    <br>
    Imię i nazwisko: $firstName $lastName
    <hr>
TEXT;

$bin = 0b1010;
echo $bin; //10

$oct = 0101;
echo $oct; //

$hex = 0xA;
echo $hex; //10

?>
</body>
</html>