<?php
$title = trim(filter_var($_POST['InputTitle'], FILTER_SANITIZE_STRING));
$intro = trim(filter_var($_POST['InputIntro']));
$text = trim(filter_var($_POST['InputText']));


$error = '';
if (strlen($title) <= 3)
  $error = 'Enter valid title';
else if (strlen($intro) <= 15)
  $error = 'Enter valid intro';
else if ($text == "" || strlen($text) <= 30)
  $error = 'Enter Text';
if($error != ''){
  echo $error;
  exit();
}

require_once "../mysql_connect.php";

$sql = 'INSERT INTO articles(title, intro, text, date, author) VALUES (?, ?, ?, ?, ?)';
$query = $pdo->prepare($sql);
$query->execute([$title, $intro, $text, time(), $_COOKIE['log']]);
echo 'Done';
?>
