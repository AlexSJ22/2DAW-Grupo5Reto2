<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once __DIR__ . '/../functions.php';

header('Content-Type: application/json; charset=utf-8');

try {
    $id = isset($_GET['id']) ? (int) $_GET['id'] : null;

    if (!$id) {
        http_response_code(400);
        echo json_encode(['error' => 'Se requiere un id']);
        exit;
    }

    $evento = obtenerEventos(1, $id);

    if (!$evento) {
        http_response_code(404);
        echo json_encode(['error' => 'Evento no encontrado']);
        exit;
    }

    echo json_encode($evento, JSON_UNESCAPED_UNICODE);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
exit;
?>