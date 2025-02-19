<?php

session_start();

$RA = $_POST['RA'];

$con = new mysqli('localhost','root','','bingo_fatec');

if ($con->connect_error) {
    die('deu ruim aqui bixo'. $con->connect_error);
}

$buscaUsu = $con->query("SELECT * FROM `usuarios` WHERE `login` LIKE '$RA'");

if($buscaUsu->num_rows > 0) {
    $resultado = $buscaUsu->fetch_assoc();
    echo "até aqui OK"; 
    if($RA == $resultado['login']){
        if($resultado['cartela'] == 0){
            $geraCartela = $con->query("SELECT * FROM cartela WHERE usuario = 0 OR usuario IS NULL ORDER BY RAND() LIMIT 1");
            $Cartela = $geraCartela->fetch_assoc();
            var_dump($Cartela);
            $cartelaNova = $Cartela['id'];
            $associarCartela = $con->query("UPDATE `usuarios` SET `cartela`='$cartelaNova' WHERE `login` LIKE '$RA'");
            $associarUsuario = $con->query("UPDATE `cartela` SET `usuario`='$RA' WHERE `id` LIKE '$cartelaNova'");
            $associarMarcados = $con->query("INSERT INTO  `marcados` (`usuario`, `cartela`) VALUES ('$RA','$cartelaNova')");
            $_SESSION['RA'] = $RA;
            header("location: ../game/bingo.php");
        }else{
            $_SESSION['RA'] = $RA;
            header("location: ../game/bingo.php");
        }
    }
}else{
    $cadUsu = $con->query("INSERT INTO `usuarios`(`login`) VALUES ('$RA')");


    $geraCartela = $con->query("SELECT * FROM cartela WHERE usuario = 0 OR usuario IS NULL ORDER BY RAND() LIMIT 1");
    $Cartela = $geraCartela->fetch_assoc();
    var_dump($Cartela);
    $cartelaNova = $Cartela['id'];
    $associarCartela = $con->query("UPDATE `usuarios` SET `cartela`='$cartelaNova' WHERE `login` LIKE '$RA'");
    $associarUsuario = $con->query("UPDATE `cartela` SET `usuario`='$RA' WHERE `id` LIKE '$cartelaNova'");
    $associarMarcados = $con->query("INSERT INTO  `marcados` (`usuario`, `cartela`) VALUES ('$RA','$cartelaNova')");
    $_SESSION['RA'] = $RA;
    header("location: ../game/bingo.php");
}