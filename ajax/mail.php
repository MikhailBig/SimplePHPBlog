<?php
$username = trim(filter_var($_POST['username'], FILTER_SANITIZE_STRING));
$email = trim(filter_var($_POST['email'], FILTER_SANITIZE_EMAIL));
$msg = trim(filter_var($_POST['msg'], FILTER_SANITIZE_STRING));

$error = '';
if (strlen($username) <= 3)
  $error = 'Enter valid Name';
else if (strlen($email) <= 3)
  $error = 'Enter valid Email';
else if (strlen($msg) <= 10)
  $error = 'Enter valid message';
if($error != ''){
  echo $error;
  exit();
}
$my_email = "test@gmail.com";
$subject = "=?utf-8?B?".base64_encode("New message from blog")."?=";
$headers = "From: $email\r\nReply-to: $email\r\nContent-type: text/html; charset=utf-8\r\n";

mail($my_email, $subject, $msg, $headers);

echo 'Done';
