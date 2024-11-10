<?php
require "config.php";

// Verificar que se haya recibido el ID
if (isset($_GET['id'])) {
    $id = intval($_GET['id']); // Asegura que sea un número entero

    // Crear la consulta para eliminar el registro
    $sql = "DELETE FROM canciones WHERE ID = $id";

    // Ejecutar la consulta
    if ($cone->query($sql) === TRUE) {
        header("Location: index.php");
exit;
    } else {
        echo "Error al eliminar el registro: " . $cone->error;
    }
} else {
    echo "No se recibió el ID del registro a eliminar.";
}
?>
