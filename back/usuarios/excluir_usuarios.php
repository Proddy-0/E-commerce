<?php
include ("../util.php");
    $conn = conecta();
    $email = $_GET['email'];
    $varSQL ="DELETE FROM usuarios WHERE email = :email";
    $delete = $conn->prepare($varSQL);
    $delete->bindParam(':email', $email);
    $delete->execute();

    header("Location: usuarios.php");
?>
