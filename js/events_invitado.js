$(document).ready(function () {
    $('#muestra_oculta2').on('click', function () {
        $('#respuesta2').toggle("swing");
        if(document.getElementById("texto").innerHTML == "Descarga"){
          document.getElementById("texto").innerHTML = "Subir";
        }else{
          document.getElementById("texto").innerHTML = "Descarga";
        }
        $('#respuesta').toggle("swing");

    });

});
