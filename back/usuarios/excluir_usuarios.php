<?php
include ("../util.php");
    $conn = conecta();
    $id = $_GET['id'];
    $varSQL ="DELETE FROM usuarios WHERE id_usuario = :id_usuario";
    $delete = $conn->prepare($varSQL);
    $delete->bindParam(':id_usuario', $id);
    $delete->execute();

    header("Location: usuarios.php");;
?>
