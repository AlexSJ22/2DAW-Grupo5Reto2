<?php
require_once '../functions.php';

iniciarSesion();

if (!estaAutenticado()) {
    enviarJSON(['success' => false, 'message' => 'Debes iniciar sesión'], 401);
    exit;
}

$resultado = obtenerMisEventos();

enviarJSON($resultado, 200);
?>