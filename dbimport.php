<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');

$mysql_host = "localhost";
$mysql_database = "kubki-reklamowe";
$mysql_user = "root";
$mysql_password = "";
# MySQL with PDO_MYSQL

$conn = new PDO("mysql:host=$mysql_host", $mysql_user, $mysql_password);

$conn->query("DROP DATABASE `kubki-reklamowe`;");
$conn->query("CREATE DATABASE `kubki-reklamowe`;");
$conn = 0;

$db = new PDO("mysql:host=$mysql_host;dbname=$mysql_database", $mysql_user, $mysql_password);

$query = file_get_contents("kubki-reklamowe-cechy.sql");

$stmt = $db->prepare($query);

if ($stmt->execute()){
    echo "Success";
}else{
    echo "Fail";
}
