<?php
$username = trim(filter_var($_POST['InputName'], FILTER_SANITIZE_STRING));
$email = trim(filter_var($_POST['InputEmail'], FILTER_SANITIZE_EMAIL));
$password1 = trim(filter_var($_POST['InputPassword1'], FILTER_SANITIZE_STRING));
$password2 = trim(filter_var($_POST['InputPassword2'], FILTER_SANITIZE_STRING));

$error = '';
if (strlen($username) <= 3)
  $error = 'Enter valid Name';
else if (strlen($email) <= 3)
  $error = 'Enter valid Email';
else if ($password1 == "" || strlen($password1) <= 3)
  $error = 'Enter password';
else if ($password2 == "" || strlen($password2) <= 3)
  $error = 'Enter password second time';
else if($password1 != $password2)
  $error = 'Passwords does not match';
if($error != ''){
  echo $error;
  exit();
}
$hash = "ieatpeanutbutter";
$pass = md5($password2 . $hash);

require_once "../mysql_connect.php";
$sql = 'INSERT INTO users(name, email, password) VALUES (?, ?, ?)';
$query = $pdo->prepare($sql);
$query->execute([$username, $email, $pass]);
echo 'Done';
?>
