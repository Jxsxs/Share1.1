<?php
include "../database/conexion.php";
$files = opendir("../archivos_locales/");

$nombreOriginal = "";
$usuarioRelacionado = "";

while ($file = readdir($files)) {
    $query_muestra_usuarios = "select files.id_archivo, users.nombre as nombre, files.nombre_original as nombre_original, files.size, files.fecha_carga from share_files.files join share_files.users on users.id_user = files.id_usuario where files.encrypt='$file' order by users.nombre";
    $query_muestra_invitados = "select files.id_archivo, invitados.id_invitado AS invitado, files.nombre_original AS nombre_original, files.size, files.fecha_carga FROM share_files.files JOIN share_files.invitados ON invitados.token_invitado = files.token_invitado where files.encrypt='$file'";
    $query_todos_archivos = "select * from files where encrypt='$file'";

    $res_muestra = $conexion->query($query_muestra_usuarios);
    $res_muestra_invitados = $conexion->query($query_muestra_invitados);
    $res_muestra_todos_archivos = $conexion->query($query_todos_archivos);


    if (is_file("../archivos_locales/" . $file)) {
        $todosArchivos = $res_muestra_todos_archivos->fetch_assoc();
        $archivoGeneral = $todosArchivos["nombre_original"];
        $id_archivo_general = $todosArchivos["id_archivo"];
        $tamanoGeneral = $todosArchivos["size"];
        $fechaCargaGeneral = $todosArchivos["fecha_carga"];

        $row_file = $res_muestra->fetch_assoc();
        $nombreOriginal = $row_file["nombre_original"];
        $usuarioRelacionado = $row_file["nombre"];
        $id_archivo = $row_file["id_archivo"];
        $tamano = $row_file["size"];
        $fechaCarga = $row_file["fecha_carga"];

        if ($archivoGeneral == $nombreOriginal) {
            echo "<tr onclick=''>";
            echo "<td>" . $usuarioRelacionado . " </td>";
            echo '<td>' . $nombreOriginal . '</td>';
            echo '<td>' . $tamano . ' Mb </td>';
            echo '<td>' . $fechaCarga . '</td>';
        } else {
            echo "<tr onclick=''>";
            echo "<td> Sin Propietario </td>";
            echo '<td>' . $archivoGeneral . '</td>';
            echo '<td>' . $tamanoGeneral . ' Mb </td>';
            echo '<td>' . $fechaCargaGeneral . '</td>';
        }

        foreach ($res_muestra_invitados as $row_file_invi) {
            $nombreOriginal = $row_file_invi["nombre_original"];
            $invitado_relacionado = $row_file_invi["invitado"];
            $id_archivo = $row_file_invi["id_archivo"];
            $tamano = $row_file["size"];
            $fechaCarga = $row_file["fecha_carga"];

            echo "<tr onclick=''>";
            echo "<td>" . $invitado_relacionado . " </td>";
            echo "<td>" . $nombreOriginal . "</td>";
            echo '<td>' . $tamano . ' Mb</td>';
            echo '<td>' . $fechaCarga . '</td>';
        }
        echo '</tr>';
    } else {
        if ($file != "." && $file != "..") {
            echo "<tr'>";
            echo "<td> --- </td>";
            echo "<td>[" . $file . "]</td>";
            echo "<td> --- </td>";
            echo "<td> --- </td>";
            echo '</tr>';
        }
    }
}

 ?>
