<?php
    include "../util.php";
    $conn = conecta();
    $varSQL = "UPDATE usuarios SET
               nome = :nome,
               email = :email,
               telefone = :telefone
               WHERE id_usuario = :id_usuario";
    $update = $conn->prepare($varSQL);
    $update->bindParam(':nome', $_POST['nome']);
    $update->bindParam(':email', $_POST['email']);
    $update->bindParam(':telefone', $_POST['telefone']);
    $update->bindParam(':id_usuario', $_POST['id_usuario']);
    if ($update->execute()) {
        if (!empty($_FILES['imagem']['name'])) {
            salvaUpload(
                $_POST['id_usuario'],
                "imagens/usuarios",
                $_FILES,
                'imagem'
            );
        }
    }
    header("Location: usuarios.php");
?>
