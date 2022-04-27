<?php
$db_host = "localhost"; 
$db_user = "root";
$db_password = "zrN0aEKvv0@SZK75";
$db_base = 'notes_db';
$mysqli = new mysqli($db_host,$db_user,$db_password,$db_base);
if ($mysqli->connect_error) {
	die('Ошибка : ('. $mysqli->connect_errno .') '. $mysqli->connect_error);
}

$contextarea;
$id_note;
if(isset($_GET['id_note'])) {
	$id_note = $_GET['id_note'];
    $query = mysqli_query($mysqli, "SELECT content FROM notes WHERE id = ('$id_note')");
    $data = [];
            while ($data[] = mysqli_fetch_assoc($query)) {}
            $contextarea = $data[0]['content'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <title>Notes</title>
</head>
<body>
    <div class="appearance">
        <div class="list appearance">
            <table>
                <tr>
                <td><a href="/" id="createButton" class="button30">+</a></td>
                    <td>
                        <h1>Список заметок:</h1>
                    </td>
                </tr>
                <?php
                $query = mysqli_query($mysqli,"SELECT * FROM notes WHERE removed = false");
                    $data = [];
                    while ($data[] = mysqli_fetch_assoc($query)) {}
                    $count = count($data) - 1;
                    for($i = 0; $i < $count; $i++) {
                        $id = $data[$i]['id'];
                        $content = $data[$i]['content'];
                        echo("<tr><td><a  href='/php_scripts/delete.php?id_note={$id}' class='button30'>X</a></td><td><a class='ref' href='/php_scripts/editNote.php?id_note={$id}' id = {$id}>{$content}</a><td></tr>");
                    }
                    if ($count > 0) {
                      echo("<tr><td></td><td><a class='delete_all' href='/php_scripts/delete_all.php'>Удалить все</a></td></tr>");
                    }
                ?>
            </table>
        </div>
        <div class="note appearance">
            <h1>Редактирование заметки</h1>
            <form action="<?php echo("/php_scripts/edit.php?id_note={$id_note}")?>" method="post">
                <textarea class="form" id="POST-name" type="text" name="textUpdateNote" placeholder="Введите текст заметки"><?php echo($contextarea)?></textarea>
                <input class="button button1" type="submit" value="Изменить">
            </form>
        </div>
    </div>
</body>
</html>