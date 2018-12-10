jQuery(document).ready(function(){
	// Show password Button
	$("#showpassword").on('click', function(){

		var pass = $("#txt_pass");
		var fieldtype = pass.attr('type');
		if (fieldtype == 'password') {
			pass.attr('type', 'text');
			$(this).text("Hide Password");
		}else{
			pass.attr('type', 'password');
			$(this).text("Show Password");
		}
	});
});
$(document).ready(function () {
    $('#muestra_oculta2').on('click', function () {
        $('#respuesta2').toggle("swing");
        $('#respuesta').toggle("swing");
        this.getElementById("txt_user").value = "";
        this.getElementById("txt_pass").value = "";
        this.getElementById("txt_token").value = "";
    });

});
function noAtras() {
    window.location.hash = "no-back-button";
    window.location.hash = "Again-No-back-button" //chrome
    window.onhashchange = function () {
        window.location.hash = "no-back-button";
    }
}
