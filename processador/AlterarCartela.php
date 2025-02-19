<?php

session_start();

if(isset($_SESSION['RA'])){
    $RA = $_SESSION['RA'];
}else{
    header('location: ../');
}

$con = new mysqli('localhost','root','','bingo_fatec');

if ($con->connect_error) {
    die('deu ruim aqui bixo'. $con->connect_error);
}

$chave = "";
$valor = "";

if(isset($_POST)){
    foreach ($_POST as $key => $value) {
        $chave = $key;
        $valor = $value;
        echo "Chave: " . htmlspecialchars($key) . " - Valor: " . htmlspecialchars($value) . "<br>";
    }
}

$buscaCartela = $con->query("SELECT * FROM `marcados` WHERE `usuario` LIKE '$RA' AND `$chave` LIKE '0'");

$cartela = $buscaCartela->fetch_assoc();

$idCartela = $cartela["id"];

$AlteraCartela = $con->query("UPDATE `marcados` SET `$chave`='$valor' WHERE `usuario` LIKE '$RA'");

if($AlteraCartela === TRUE){
    header("location:../game/bingo.php");
}