function filtrar(){
    numGeneros=document.getElementsByClassName("genero").length;
    valorSelect=document.getElementById("generoFiltrar").value;
    document.getElementById("duracionFiltrar").disabled=true;

    
    for(var i=0;i<numGeneros;i++){
        valorGenero=document.getElementsByClassName("genero")[i].value;
        if(valorGenero==valorSelect){
            document.getElementsByClassName("dvSerie")[i].hidden=false;
        }
        else if(valorSelect=="ninguna"){
            document.getElementsByClassName("dvSerie")[i].hidden=false;
            document.getElementById("duracionFiltrar").disabled=false;
        }
        else{
            document.getElementsByClassName("dvSerie")[i].hidden=true;
        }
    }
}
function filtrarDuracion(){
    valorSelect=document.getElementById("duracionFiltrar").value;
    numDuraciones=document.getElementsByClassName("duracion").length;
    document.getElementById("generoFiltrar").disabled=true;

    for(var i=0;i<numDuraciones;i++){
        var elemento=document.getElementsByClassName("duracion")[i].value;
        if(valorSelect==1){
            if(elemento>90 && elemento<=120){
                document.getElementsByClassName("dvSerie")[i].hidden=false;
            }
            else{
                document.getElementsByClassName("dvSerie")[i].hidden=true;
            }      
        }

        if(valorSelect==2){
            if(elemento>=121 && elemento<=150){
                document.getElementsByClassName("dvSerie")[i].hidden=false;
            }
            else{
                document.getElementsByClassName("dvSerie")[i].hidden=true;
            }
        }

        if(valorSelect==3){
            if(elemento>=151 && elemento<=180){
                document.getElementsByClassName("dvSerie")[i].hidden=false;
            }
            else{
                document.getElementsByClassName("dvSerie")[i].hidden=true;
            }
        }

        if(valorSelect==4){
            if(elemento>=181){
                document.getElementsByClassName("dvSerie")[i].hidden=false;
            }
            else{
                document.getElementsByClassName("dvSerie")[i].hidden=true;
            }
        }
        if(valorSelect==5){
            if(elemento<=250){
                document.getElementsByClassName("dvSerie")[i].hidden=false;
            }
            else{
                document.getElementsByClassName("dvSerie")[i].hidden=true;
            }
        }
        if(valorSelect==6){
            if(elemento>250 && elemento<=300){
                document.getElementsByClassName("dvSerie")[i].hidden=false;
            }
            else{
                document.getElementsByClassName("dvSerie")[i].hidden=true;
            }
        }
        if(valorSelect==7){
            if(elemento>300 && elemento<=350){
                document.getElementsByClassName("dvSerie")[i].hidden=false;
            }
            else{
                document.getElementsByClassName("dvSerie")[i].hidden=true;
            }
        }
        if(valorSelect==8){
            if(elemento>350){
                document.getElementsByClassName("dvSerie")[i].hidden=false;
            }
            else{
                document.getElementsByClassName("dvSerie")[i].hidden=true;
            }
        }
        if(valorSelect==0){
            document.getElementsByClassName("dvSerie")[i].hidden=false;
            document.getElementById("generoFiltrar").disabled=false;
        }
    }   
}