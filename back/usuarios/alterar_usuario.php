<html>

<body>
    <?php
        include "../util.php";
        $conn = conecta();
        $email = $_GET['email']; // recupera o email
        $varSQL = "SELECT * FROM usuarios WHERE email = :email";
        $select = $conn->prepare($varSQL);
        $select->bindParam(':email', $email);
        $select->execute();
        $linha = $select->fetch(); // não tem while, é 1 linha

        $nome = $linha['nome'];
        $telefone = $linha['telefone'];
        $email = $linha['email'];
    ?>

    <form action='updateCursos.php' method='post'
        enctype="multipart/form-data">
        Nome<br>
        <input type='text' name='nome' value='<?= $nome ?>'><br>
        Email<br>
        <input type='email'   name='email'    value='<?= $email ?>'><br>
        Telefone<br>
        <input type='text'   name='telefone' value='<?= $telefone ?>'><br>

        <?php
             if ( file_exists("imagens/usuarios/$email.jpg") )
                echo "<img src='imagens/usuarios/$email.jpg' height=40><br>";

        ?>

        <input type='file' name='arquivo'><br>
        <input type='submit' value='Salvar'>
    </form>
</body>

</html>
