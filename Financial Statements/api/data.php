<?php


header('Content-Type: application/json');

define('DBHOST', 'localhost');
define('DBUSERNAME', 'root');
define('DBPASSWORD', '');
define('DBNAME', 'charity');

$mysqli = new mysqli(DBHOST,DBUSERNAME,DBPASSWORD, DBNAME);

if(!$mysqli){
	die("Connection failed" .$mysqli->error);
}

$query = sprintf("SELECT user_id, company, amount from bemefactor ORDER BY user_id");

$result = $mysqli->query($query);

$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

$result->close();

$mysqli->close();

print json_encode($data);

?>