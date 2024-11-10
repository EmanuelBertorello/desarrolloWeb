<?php 
$cone = new mysqli("localhost","root","","music");
if($cone ->connect_error){
    die("error de conexion". $cone ->connect_error);

}
?>