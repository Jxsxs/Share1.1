var table = "";
$(document).ready(function() {
  table = $('#tabla').DataTable();
  $('#tabla tbody').on( 'click', 'tr', function () {
      if ( $(this).hasClass('selected') ) {
          $(this).removeClass('selected');
      }
      else {
          table.$('tr.selected').removeClass('selected');
          $(this).addClass('selected');
      }
  } );
} );

function eliminarArchivo(){
  var tabla = table.row(".selected").data();
  var dato = {
    "nombre_original":tabla[1]
  }
  // var url = "../controller/control_admin.php?dato=" + dato;
  $.ajax({
    data:dato,
    url : "../controller/control_eliminar_archivo_admin.php",
    type: "POST",
    beforeSend: function () {
            $("#datos").html("Se está procesando la solicitud ...");
            // document.getElementById("inputNumber").disabled = true;
    },
    success:  function (response) {
            alert(response);
    },
    error: function(){
            $("#datos").html("Error: no se realizó la operación");
    }
  });
}
function subirArchivo(){
  var file_data = $('#fileToUpload').prop('files')[0];
    var form_data = new FormData();
    form_data.append('archivo', file_data);
    $.ajax({
        url: '../controller/control_subir_admin.php', // point to server-side PHP script
        dataType: 'text',  // what to expect back from the PHP script, if anything
        cache: false,
        contentType: false,
        processData: false,
        data: form_data,
        type: 'post',
        success: function(response){
            alert(response); // display response from the PHP script, if any
        }
     });
}
