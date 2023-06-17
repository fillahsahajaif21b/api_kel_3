<?php
include "../connection.php";

$id_panitia = $_POST['id_panitia'];

$sql = "
        DELETE FROM panitia 
        WHERE
        id_panitia = '$id_panitia'
        ";
$result = $connect->query($sql);

echo json_encode(array(
    "success" => $result
));

?>