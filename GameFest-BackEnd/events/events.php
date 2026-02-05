<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once __DIR__ . '/../functions.php';

header('Content-Type: application/json; charset=utf-8');

try {
    $page = isset($_GET['page']) ? (int) $_GET['page'] : 1;
    $id = isset($_GET['id']) ? (int) $_GET['id'] : null;
    $tipo = isset($_GET['tipo']) ? $_GET['tipo'] : null;
    $fecha = isset($_GET['fecha']) ? $_GET['fecha'] : null;
    $plazas = isset($_GET['plazas']) ? $_GET['plazas'] : null;

    if ($page < 1)
        $page = 1;

    // Llamamos a la super función
    $resultado = obtenerEventos($page, $id, $tipo, $fecha, $plazas);

    echo json_encode($resultado, JSON_UNESCAPED_UNICODE);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
exit;
?>