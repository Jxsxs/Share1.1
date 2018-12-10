<?php
  include "../database/conexion.php";


  // if (isset($_POST['btn-subir'])) {
  session_start();
  // $user_id = $_SESSION["id_usuario"];
  $user_id = 1;

  $token_archivo = str_shuffle("abcdefghijklmnopqrstuvwxyz0123456789" . uniqid());
  $nombreArchivo = $_FILES["archivo"]["name"];
  $nombreTmpArchivo = $_FILES["archivo"]["tmp_name"];
  $trozoNombreArchivo = explode("/", $nombreTmpArchivo);
  $nombreArchivoSistema = end($trozoNombreArchivo);
  $tamañoArchivo = $_FILES["archivo"]["size"];
  $tamañoTotal = round((($tamañoArchivo) / 1000000), 2);
  $band = false;
  $trozos = explode(".", $nombreArchivo);
  $ext = end($trozos);
  //    echo 'Nombre: ' . $nombreArchivo . '<br>';
  //    echo 'Ext: ' . $ext . '<br>';
  $archivoEncriptado = sha1($nombreArchivo);
  $fecha_subida = date("Y-m-d H:i:s");

  $query_busca_file = "select nombre_original from files";
  $res_busca_file = $conexion->query($query_busca_file);
  foreach ($res_busca_file as $row) {
      $nombre_original = $row["nombre_original"];
      if ($nombreArchivo == $nombre_original) {
          $band = true;
      }
  }
  if ($band) {
      echo 'El archivo ya existe!!<br>';
  } else {

  //    echo 'tamaño: ' . $tamañoTotal . '<br>'; echo '<td>' . $tamano . '</td>';
  //    $formatos = array('.jpg', '.txt', '.html', '.docx', '.php', '.xml', '.pdf', '.rar', '.zip');
      $query_file = "insert into files (nombre_original, nombre_sistema, encrypt, token_archivo, fecha_carga, id_usuario,size) values('$nombreArchivo','$nombreArchivoSistema','$archivoEncriptado', '$token_archivo', '$fecha_subida', '$user_id', '$tamañoTotal')";
      if ($conexion->query($query_file) === true) {
          $add = "../archivos_locales/" . $archivoEncriptado;
          if (move_uploaded_file($nombreTmpArchivo, $add)) {
              chmod($add, 0666);
              header('refresh:2');
              echo " Ha sido subido satisfactoriamente";
          } else {
              echo "Error al subir el archivo";
          }
      } else {
          echo 'Error: ' . $consulta . ' ' . $conexion->error;
      }
  }
  // }

 ?>
