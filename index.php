
<?php
require "config.php";
$columns = ['ID', 'nombre', 'album', 'artista', 'fecha','tiempo'];
$table = "canciones";
$campo = isset($_POST["campo"]) ? $cone->real_escape_string($_POST["campo"]) : null;
$where = "";
if ($campo != null) {
    $where = "WHERE (";
    foreach ($columns as $column) {
        $where .= "$column LIKE '%$campo%' OR ";
    }
    $where = substr($where, 0, -4); 
    $where .= ")";
}
$sql = "SELECT " . implode(", ", $columns) . " FROM $table $where";
$resultado = $cone->query($sql);
?>
<!DOCTYPE html>
<html lag="es">
    <head>
        <meta charset="UTF-8">
       <title>Proyecto</title>
       <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <body style="background-color: rgb(20 184 166);">
    <div class="relative isolate overflow-hidden " style="background-color: rgb(20 184 166);">
    
    <div class="px-6   lg:flex lg:px-8 ">
      <div class=" flex-shrink-0 lg:mx-0 lg:max-w-xl lg:pt-8">
        <div class=" sm:mt-32 lg:mt-16">
          <a href="buscador" class="inline-flex space-x-6">
      
                <path fill-rule="evenodd" d="M7.21 14.77a.75.75 0 01.02-1.06L11.168 10 7.23 6.29a.75.75 0 111.04-1.08l4.5 4.25a.75.75 0 010 1.08l-4.5 4.25a.75.75 0 01-1.06-.02z" clip-rule="evenodd" />
              </svg>
            </span>
          </a>
        </div>
        <h1 class="mt-10 text-4xl font-bold tracking-tight text-white sm:text-6xl">Descubre musica nueva</h1>
        <p class=" text-lg leading-8 text-gray-300">coloca alguna palabra clave para comenzar</p>
        <div class=" flex items-center gap-x-6">
        
        </div>
      </div>

      </div>
    </div>
  </div>
  <div class="h-50px  flex justify-center items-center" >
  <div class="container mx-auto rounded-lg py-12" style="height: 20vh;">
        <form action="" method="post">
        <h1 class="text-center font-bold text-white text-4xl">Descubre nuevas canciones</label>
        <a href="#" data-bs-toggle="modal" data-bs-target="#nuevoModal" onclick="openModal()" class="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600">nuevo registro </a>
        <input class="text-base w-full py-3 text-gray-400 flex-grow outline-none px-2 h-11	rounded-lg" type="text" name="campo" id="campo" placeholder="escribe aqui el nombre del artista o algun album">
        </form>
        <table  class="w-full text-sm text-left rtl:text-right py-12 text-gray-500 dark:text-gray-400">
            <thead class="text-xs text py-3-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <th> ID</th>
                <th>Nombre</th>
                <th>Album</th>
                <th>Artista</th>
                <th>fecha</th>
                <th>duracion</th>
                <th>eliminar</th>
            </thead>
            <tbody  style="background-color: rgb(256, 256 ,256);"   id="contenido">
                
            </tbody>
            </div>
            </div>
        </table>
        <script>
    getData();
    document.getElementById("campo").addEventListener("keyup", getData);

    function getData() {
        let input = document.getElementById("campo").value;
        let content = document.getElementById("contenido");
        let url = "load.php";
        let formuData = new FormData();
        formuData.append("campo", input);
        fetch(url, {
            method: "POST",
            body: formuData
        })
        .then(response => response.json())
        .then(data => {
            // Inserta el HTML recibido en el contenedor
            content.innerHTML = data;
        })
        .catch(err => console.log(err));
    }
</script>
<?php  include "nuevoModal.php"?>
    </body>
</html>