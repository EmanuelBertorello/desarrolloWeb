<?php 
require "config.php";

// Escapar las variables de entrada
$nombre = $cone->real_escape_string($_POST["nombre"]);
$album = $cone->real_escape_string($_POST["album"]);
$artista = $cone->real_escape_string($_POST["artista"]);
$fecha = $cone->real_escape_string($_POST["fecha"]);
$duracion = $cone->real_escape_string($_POST["tiempo"]);

// Generar un ID único (puedes usar otra lógica si lo prefieres)
$id = uniqid(); // Esto genera un ID único basado en el tiempo actual

// Consulta SQL con el valor explícito para 'id'
$sql = "INSERT INTO `canciones`(`ID`, `nombre`, `album`, `artista`, `fecha`, `tiempo`)
VALUES ('$id', '$nombre', '$album', '$artista', '$fecha', '$duracion')";

// Ejecutar la consulta SQL
if ($cone->query($sql)) {
    // La inserción fue exitosa, pero ya no necesitas obtener el insert_id
    // porque el 'id' es generado manualmente.
} else {
    // Si ocurre un error, mostrar el mensaje de error
    die("Error al insertar en la base de datos: " . $cone->error);
}

// Redirigir al usuario después de la inserción
header("Location: index.php");
exit;
?>
