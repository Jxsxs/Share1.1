<?php
include "../database/conexion.php";
$nombre_original = $_POST["nombre_original"];
// echo "el dato es " . $nombre_original;

$path = "../archivos_locales/";
$files = opendir($path);

$query_busca_file = "select files.encrypt from files where nombre_original='$nombre_original'";
$query_elimina_file = "delete from files where nombre_original='$nombre_original'";
$res_busca_file = $conexion->query($query_busca_file);
while ($archivo = readdir($files)) {
    foreach ($res_busca_file as $file) {
        $encrypt = $file["encrypt"];
        if ($archivo == $encrypt) {
            if (unlink($path . $archivo)) {
                if ($conexion->query($query_elimina_file)) {
                    echo 'Eliminado Correctamente!!';
                }
            } else {
                echo 'NO se pudo borrar localmente';
            }
        }
    }
}


 ?>
