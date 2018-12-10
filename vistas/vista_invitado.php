<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Invitado</title>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script src="../js/events_invitado.js"></script>
        <!-- <link href="../css/login.css" media="screen" rel="StyleSheet" type="text/css"> -->

        <!------ Include the above in your HEAD tag ---------->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <!-- <link href="../css/login.css" rel="stylesheet"> -->
        <link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://unpkg.com/gijgo@1.9.11/js/gijgo.min.js" type="text/javascript"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <?php
    // include '../controller/control-genera-invitado.php';
    ?>
    <body>
      <nav class="navbar navbar-inverse">
       <div class="container">
         <div class="navbar-header">
           <a class="navbar-brand" href="#"></a>
         </div>
         <ul class="nav navbar-nav">
           <!-- <li class="active"><a href="#"></a></li>
           <li><a href="#">Page 1</a></li>
           <li><a href="#">Page 2</a></li> -->
         </ul>
         <ul class="nav navbar-nav navbar-right">
           <li><a href="../controller/control_logout.php"><span class="glyphicon glyphicon-log-out"></span> Salir</a></li>
           <!-- <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
         </ul>
       </div>
      </nav>
      <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="well well-sm">
                    <form class="form-horizontal" method="post">
                        <fieldset>
                          <!-- <form role="form" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post" class=""> -->
                            <legend class="text-center header">Datos: </legend>
                            <div class="form-group" id="respuesta">
                                <span class="col-md-1 col-md-offset-2 text-center"></span>
                                <div class="col-md-6 text-center">
                                  <input type="file" name="archivo_invitado" class="form-control-file" id="fileToUpload" onchange="progressBar()">
                                </div>
                                <div class="col-md-2 text-center">
                                  <button type="submit" class="btn btn-primary" name="btn-subir-invitado">Subir</button>
                                </div>
                            </div>
                            <div class="form-check">
                              <div class="col-md-1 col-md-offset-2 text-center" id="muestra_oculta2"> <strong id="texto">Descarga</strong></div>
                              <div class="" id="respuesta2" style="display:none">
                                <div class="col-md-6" >
                                  <!-- <form role='form' action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="post" enctype="multipart/form-data"> -->
                                  <input type="text" id="txt_token_archivo" name="txt_token_archivo" class="form-control" placeholder="Token de archivo">
                                </div>
                                <div class="col-md-1">
                                  <!-- <form role='form' action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="post" enctype="multipart/form-data"> -->
                                  <button type="submit" class="btn btn-primary" name="btn-busca-archivo">Buscar Archivo</button>
                                </div>
                              </div>
                            </div>
                            <!-- </form> -->
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
      </div>
    </body>
</html>
