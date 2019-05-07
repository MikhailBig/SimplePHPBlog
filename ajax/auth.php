<?php
$email = trim(filter_var($_POST['InputEmail'], FILTER_SANITIZE_EMAIL));
$password = trim(filter_var($_POST['InputPassword'], FILTER_SANITIZE_STRING));

$error = '';
if (strlen($email) <= 3)
  $error = 'Enter valid Email';
else if ($password == "" || strlen($password) <= 3)
  $error = 'Enter password';
if($error != ''){
  echo $error;
  exit();
}
$hash = "ieatpeanutbutter";
$pass = md5($password . $hash);

require_once "../mysql_connect.php";
$sql = 'SELECT `id` FROM `users` WHERE `email` = :email && `password` = :password';
$query = $pdo->prepare($sql);
$query->execute(['email' =>  $email, 'password' => $pass]);

$user = $query->fetch(PDO::FETCH_OBJ);
if($user->id == 0)
  echo "Such user does not exist";
else {
  setcookie('log', $email, time() + 3600 * 24 * 30, "/");
  echo 'Done';
}

?>
