$(document).ready(function(){
    contador=0;
    $("#fotoPerf").click(function(){
        contador++;
        if(contador==5){
            $("#oculto").fadeIn();
        }
        else if(contador==11){
            contador=0;
        }
        else{
            $("#oculto").fadeOut();
        }
    });
});