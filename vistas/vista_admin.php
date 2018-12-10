<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

    <!-- <link href="../css/login.css" media="screen" rel="StyleSheet" type="text/css"> -->

    <!------ Include the above in your HEAD tag ---------->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <!-- <link href="../css/login.css" rel="stylesheet"> -->
    <link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.11/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.18/r-2.2.2/sl-1.2.6/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.18/r-2.2.2/sl-1.2.6/datatables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="../js/events_admin.js"></script>
    <title></title>
  </head>
  <body>
    <nav class="navbar navbar-inverse">
     <div class="container">
       <div class="navbar-header">
         <a class="navbar-brand" href="#"></a>
       </div>
       <ul class="nav navbar-nav">
         <li class="nav-item active"><a href="#">Home</a></li>
         <li class="nav-item"><a href="vista_ver_invitados.php">Ver Invitados</a></li>
         <li class="nav-item"><a href="vista_ver_usuarios.php">Ver Usuarios</a></li>
       </ul>
       <ul class="nav navbar-nav navbar-right">
         <li><a href="../controller/control_logout.php"><span class="glyphicon glyphicon-log-out"></span> Salir</a></li>
       </ul>
     </div>
    </nav>

        <div class="my-content" >
          <div class="container">
            <table class="table table-striped table-hover " id="tabla">
              <thead>
                <tr>
                  <th> <h4>Propietario </h4></th>
                  <th> <h4>Archivo</h4></th>
                  <th> <h4>Tamaño</h4></th>
                  <th> <h4>Fecha de Carga</h4></th>
                </tr>
              </thead>
              <tbody>
                <?php include "../controller/control_cargar_tabla_admin.php"; ?>
              </tbody>
            </table>
            <div class="form-group">
              <button type="submit" class="btn btn-primary right" name="btn-descargar-admin" id="btn-descargar-admin" onclick="descargarArchivo()">Descargar</button>
              <button type="submit" class="btn btn-primary right" name="btn-token-archivo" id="btn-token-archivo">Token Archivo</button>
              <button type="submit" class="btn btn-danger right" name="btn-eliminar" id="btn-eliminar" onclick="eliminarArchivo()">Eliminar</button>
            </div>
            <div style="float: right">
              <table style="align-self: auto">
                <tr>
                  <td><input type="file" name="archivo" class="form-control-file" id="fileToUpload"></td>
                  <td><button type="submit" class="btn btn-success right" name="btn-subir" onclick="subirArchivo()">Upload</button></td>
                </tr>
              </table>
            </div>
          </div>

            <br>

            <div class="">

            </div>

            <span id="resultado"></span>
        </div>
  </body>
</html>
