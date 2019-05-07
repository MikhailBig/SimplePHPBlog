<?php
$user = 'root';
$user_pass = 'root';
$db = 'phpblog';
$host = 'localhost';

$dsn = trim('mysql:host='.$host.';dbname='.$db);
$pdo = new PDO($dsn, $user, $user_pass);
