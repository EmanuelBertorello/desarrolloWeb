<?php
require "config.php";

// Lista de columnas sin comillas invertidas
$columns = ['ID', 'nombre', 'album', 'artista', 'fecha','tiempo'];
$table = "canciones";

// Escapa el campo si se proporciona y no está vacío
$campo = isset($_POST["campo"]) ? $cone->real_escape_string($_POST["campo"]) : null;
$where = "";

if ($campo != null) {
    $where = "WHERE (";
    foreach ($columns as $column) {
        $where .= "$column LIKE '%$campo%' OR ";
    }
    $where = substr($where, 0, -4); // Elimina el último " OR "
    $where .= ")";
}

// Construcción de la consulta SQL
$sql = "SELECT " . implode(", ", $columns) . " FROM $table $where";

// Ejecutar la consulta
$resultado = $cone->query($sql);

// Preparar variable para almacenar el HTML
$html = "";

// Verificar si hay resultados
if ($resultado && $resultado->num_rows > 0) {
    while ($row = $resultado->fetch_assoc()) {
        $html .= "<tr>";
        $html .= "<td>" . htmlspecialchars($row["ID"]) . "</td>";
        $html .= "<td>" . htmlspecialchars($row["nombre"]) . "</td>";
        $html .= "<td>" . htmlspecialchars($row["album"]) . "</td>";
        $html .= "<td>" . htmlspecialchars($row["artista"]) . "</td>";
        $html .= "<td>" . htmlspecialchars($row["fecha"]) . "</td>";
        $html .= "<td>" . htmlspecialchars($row['tiempo']) . "</td>";
        $html .= "<td><a href='eliminar.php?id=" . $row['ID'] . "'>Eliminar</a></td>";
        $html .= "</tr>";
    }
} else {
    // Si no hay resultados, mostrar un mensaje
    $html .= "<tr>";
    $html .= "<td colspan='5'>Sin resultado</td>"; 
    $html .= "</tr>";
}

// Devolver los resultados como JSON
echo json_encode($html, JSON_UNESCAPED_UNICODE);
?>
