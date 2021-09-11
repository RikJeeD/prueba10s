<?php
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];
session_start();
$_SESSION['usuario']=$usuario;

$conexion=mysqli_connect("localhost","root","","aeropuerto_univalle");

$consulta="SELECT*FROM usuario where username='$usuario' and password='$contraseña'";
$resultado= mysqli_query($conexion,$consulta);

$filas=mysqli_num_rows($resultado);


if($filas){
    header("location:home.php");
} else{
    ?>
    <?php
    include("index.php");
    ?>
    <div class="alert alert-danger" role="alert">
    El usuario no existe o la contraseña con cocincide con el usuario
    </div> 
    <?php

}

mysqli_free_result($resultado);
mysqli_close($conexion);