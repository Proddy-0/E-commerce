<?php

    include "../util.php";
    $conn = conecta();

$varSQL = "INSERT INTO usuarios
           (nome, email, senha, telefone)
           VALUES (:nome, :email, :senha, :telefone)";
$insert = $conn->prepare($varSQL);

$insert->bindParam(':nome', $_POST['nome']);
$insert->bindParam(':email', $_POST['email']);
$insert->bindParam(':senha', $_POST['senha']);
$insert->bindParam(':telefone', $_POST['telefone']);

if ($insert->execute()) {
    if (!empty($_FILES['imagem']['name'])) {
        salvaUpload(
            $conn->lastInsertId(),
            "imagens/usuarios",
            $_FILES,
            'imagem'
        );
    }
}
header("Location: usuarios.php");
exit;
?>
