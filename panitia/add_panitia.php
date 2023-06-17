<?php 
    include "../connection.php";

    $nama_panitia   = $_POST['nama_panitia'];
    $no_iden        = $_POST['no_iden'];
    $jenis_kelamin  = $_POST['jenis_kelamin'];
    $role_panitia   = $_POST['role_panitia'];
    
    $sql1 = "SELECT * FROM panitia WHERE nama_panitia = '$nama_panitia'";
    $check = $connect->query($sql1);
    $reason = "";
    $success = true;

    if($check->num_rows > 0){
        $success = false;
        $reason = "nama sudah ada";
    }else{
        $sql2 = "
        INSERT INTO user SET 
            id_panitia = NULL,
            nama_panitia = '$nama_panitia',
            no_iden = '$no_iden',
            jenis_kelamin = '$jenis_kelamin',
            role_panitia = '$role_panitia'
        ";
        
        $result = $connect->query($sql2);

        if(!$result){
            $success = false;
            $reason = "Gagal add Panitia";
        }
    }

    echo json_encode(array(
        "success" => $success,
        "reason" =>$reason,
    ));