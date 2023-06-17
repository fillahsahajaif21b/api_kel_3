<?php
include "../connection.php";

$id_panitia    = $_POST['id'];
$nama_panitia       = $_POST['nama_panitia'];
$no_iden   = $_POST['no_iden'];
$jenis_kelamin       = $_POST['jenis_kelamin'];
$role_panitia       = $_POST['role_panitia'];


$sql = "
        UPDATE user 
        SET 
        no_iden = '$no_iden'
        ,nama_panitia = '$nama_panitia'
        ,jenis_kelamin = '$jenis_kelamin'
        ,role_panitia = '$role_panitia'
        WHERE
        id_panitia = '$id_panitia'
        ";

$result = $connect->query($sql);
echo json_encode(array(
    "success" => $result
));
