$(document).ready(function() {
            $("#tabs").tabs();
            $("#acordeon_1").accordion({
                header: "h3"
            });
            $("#acordeon_2").accordion({
                header: "h3"
            });
            $("#acordeon_3").accordion({
                header: "h3"
            });
            $( "#fnac" ).datepicker({
                changeMonth: true,
                changeYear: true
              });
            var fecha=$( "#fecha" ).val();
            var fnac=$( "#fnac" ).val();
            var fechaAn=$("#fechaAn").val();
              $("#fnac").datepicker("option", "dateFormat", "yy-mm-dd");
              $("#fnac").datepicker('setDate', fnac);
              $( "#fecha" ).datepicker({
                changeMonth: true,
                changeYear: true
              });
              $("#fecha").datepicker("option", "dateFormat", "yy-mm-dd");
              $("#fecha").datepicker('setDate', fecha);
              $( "#fechaAn" ).datepicker({
                changeYear: true
              });
              $("#fechaAn").datepicker("option", "dateFormat", "yy");
              $("#fechaAn").datepicker('setDate', fechaAn);
              //$("#fecha").value=fecha;
              //$("#fnac").value=fnac;
        });