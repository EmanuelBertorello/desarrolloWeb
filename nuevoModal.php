<style>
        /* Overlay para fondo oscuro */
        .modal-overlay {
            margin-top: 200px;
            display: none; /* Oculto por defecto */
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 20%;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }
        
        /* Estilo del modal */
        .modal {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            width: 60%;
            max-width: 400px; /* Limita el ancho máximo */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            text-align: left;
        }
        
        .modal h2 {
            font-size: 2px;
            margin-bottom: 10px;
            color: #333;
        }
        
        .modal label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
            color: #555;
        }
        .label{
            font-size: 13px;
        }
        .input{
            height:19px;
            color:#333;
            font-size: 13px;
        }
        .modal input[type="text"],
        .modal input[type="date"],
        .modal input[type="time"],
        .modal select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        
        .modal button {
            margin-top: 15px;
            padding: 10px;
            width: 48%;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            cursor: pointer;
        }

        .modal .save-btn {
            background-color: #28a745;
            color: #fff;
        }

        .modal .save-btn:hover {
            background-color: #218838;
        }

        .modal .cancel-btn {
            background-color: #dc3545;
            color: #fff;
        }

        .modal .cancel-btn:hover {
            background-color: #c82333;
        }

        .modal-buttons {
            display: flex;
            justify-content: space-between;
        }
    </style>
<div class="modal-overlay" id="modalOverlay" style="display: none">
    <div class="modal">
        <h2>Agregar Nueva Canción</h2>
        <form id="songForm" action="guarda.php" method="post" enctype="multipart/form-data">
            <label class="label" for="nombre">Nombre</label>
            <input class="input" type="text" id="nombre" name="nombre" required>

            <label class="label" for="artista">Artista</label>
            <input class="input" type="text" id="artista" name="artista" required>

            <label class="label" for="album">Álbum</label>
            <input class="input" type="text" id="album" name="album" required>

            <label class="label" for="fecha">Fecha</label>
            <input class="input" type="date" id="fecha" name="fecha" required>

            <label class="label" for="duracion">Duración</label>
            <input class="input" type="time" id="tiempo" name="tiempo" step="1" required>

            <label class="label" for="genero">Género</label>
            <select id="genero" class="input" name="genero" required>
                <option class="input" value="Rock">Rock</option>
                <option class="input" value="Jazz">Jazz</option>
                <option class="input" value="Blues">Blues</option>
                <option class="input" value="Hip-Hop">Hip-Hop</option>
                <option class="input" value="Clásica">Clásica</option>
                <option class="input" value="Reggae">Reggae</option>
                <option class="input" value="Pop">Pop</option>
                <option class="input" value="Metal">Metal</option>
                <option class="input" value="Electrónica">Electrónica</option>
                <option class="input" value="Salsa">Salsa</option>
                <option class="input" value="Cumbia">Cumbia</option>
                <option class="input" value="Folk">Folk</option>
            </select>

            <div class="modal-buttons">
                <button type="button" class="cancel-btn" onclick="closeModal()">Cancelar</button>
                <button type="submit" class="save-btn">Guardar</button>
            </div>
        </form>
    </div>
</div>

<script>
    // Función para abrir el modal
    function openModal() {
        document.getElementById('modalOverlay').style.display = 'flex';
    }

    // Función para cerrar el modal
    function closeModal() {
        document.getElementById('modalOverlay').style.display = 'none';
    }

    // Cierra el modal al hacer clic fuera de él
    window.onclick = function(event) {
        const modalOverlay = document.getElementById('modalOverlay');
        if (event.target === modalOverlay) {
            closeModal();
        }
    }
</script>

