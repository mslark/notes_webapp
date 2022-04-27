<?php
$db_host = "localhost"; 
$db_user = "root";
$db_password = "zrN0aEKvv0@SZK75";
$db_base = 'notes_db';
$mysqli = new mysqli($db_host,$db_user,$db_password,$db_base);
if ($mysqli->connect_error) {
	die('Ошибка : ('. $mysqli->connect_errno .') '. $mysqli->connect_error);
}

if(isset($_GET['id_note'])) {
	$id = $_GET['id_note'];
    if(isset($_POST['textUpdateNote'])) {
        $content = $_POST['textUpdateNote'];
        echo("test");
        $mysqli->query("UPDATE notes SET content = ('$content') WHERE id = ('$id')");
        header("Location: /");
    }
}
?>
