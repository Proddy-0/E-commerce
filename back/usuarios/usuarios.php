<html>

<body>
    <form action="" method="POST">
        Nome:<br>
        <input type="text" name="nome">
        <input type="submit" value="Filtrar">
    </form>

    <?php
    // se $_POST nao existe, sai fora !

    include "../util.php";

    $conn = conecta();  // pra usar no ecommerce

    if (isset($_POST['nome']) and $_POST['nome'] <> "") {
        $varSQL = " SELECT * FROM usuarios
                        where nome LIKE :paramNome
                        order by nome";
        $select = $conn->prepare($varSQL);
        $select->bindParam(":paramNome", $_POST['nome']);
        $select->execute();
    } else {
        $varSQL = " SELECT * FROM usuarios
                        order by nome";
        $select = $conn->query($varSQL);
    }


    echo "<table border=1'>
                <tr>
                    <td>Nome</td>
                    <td>Email</td>
                    <td>Telefone</td>
                    <td>Foto</td>
                    <td></td><td></td>
                </tr>";

    while ($linha = $select->fetch()) {
        $nome    = $linha['nome'];
        $email = $linha['email'];
        $telefone     = $linha['telefone'];
        $nomeArquivo = "imagens/usuarios/$email.jpg";
        if (!file_exists($nomeArquivo)) {
            $nomeArquivo = "imagens/semnome.jpg";
        }
        echo "
                <tr>
                    <td>$nome</td>
                    <td>$email</td>
                    <td>$telefone</td>
                    <td>
                    <img src='$nomeArquivo' height=40>
                    </td>
                    <td>
                        <a href='alterar_usuarios.php?id=$id'>Alterar</a>
                    </td>
                    <td>
                        <a href='excluir_usuarios.php?id=$id'>Excluir</a>
                    </td>
                </tr>";
    }

    echo "</table>
              <a href='adicionarUsuario.php'>
                 Adicionar</center>
              </a>";

    ?>
</body>

</html>
