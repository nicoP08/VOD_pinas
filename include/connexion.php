<?php
###########################################
############ PDO-Extension #############
###########################################


$host_name = 'localhost';
$database = 'vod';
$user_name = 'root';
$password = '';

$dbh = null;

$dbh = new PDO("mysql:host=$host_name; dbname=$database;", $user_name, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
try {


} catch (PDOException $e) {
  echo "connexion échouée: " . $e->getMessage() . "<br/>";
  die();
}
