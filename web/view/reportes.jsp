<%-- 
    Document   : PRUEBA
    Created on : 10/02/2017, 02:11:41 PM
    Author     : SOPORTE
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="Controlador.Reporte_Controller"%>
<%@page import="Bean.ReporteBean"%>
<%@page import="Bean.ReporteBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>DETEL - COPERE</title>

    <!-- INICIO LINKS -->
    
    <jsp:include page="../view/front_end/links.jsp" flush="true" />
    <!-- FIN DE LINKS -->
    
    <!-- LINKS PARA EL COMBOBOX -->
    <script src="../otros/js/jquery-3.1.1.js" type="text/javascript"></script>        
    <script src="../otros/js/bootstrap-select.js" type="text/javascript"></script>
    <link href="../otros/css/bootstrap-select.css" rel="stylesheet" type="text/css"/>
    <script src="../otros/js/i18n/defaults-es_ES.js" type="text/javascript"></script>
    
</head>

<body >

    <!-- INICIO SIDEBAR -->
        
        <jsp:include page="../view/front_end/sidebar.jsp" flush="true" />
        
        <!-- FIN SIDEBAR -->
    
    
    
    <div class="col-lg-12" id="wrapper">
     

        <div  class="col-lg-12"id="page-wrapper">
            <!-- /.SUBTITLE -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Reporte General</h1>
                </div>
                
            </div>
            <!-- /.CUERPO -->
                       
            <div class="row col-lg-10">
                <div class="col-lg-10">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            SELECCIONE DATOS A MOSTRAR
                        </div>
                        <div class="panel-body">
                            
                        <form class="form-horizontal">

                            <div class="btn-group" >
                                <input type="checkbox" autocomplete="off" checked id="DNI" disabled> DNI<br>
            <input type="checkbox" autocomplete="off" checked id="CIP" disabled> CIP<br>
            <input type="checkbox" autocomplete="off" checked id="GRADO" disabled> GRADO<br>
            <input type="checkbox" autocomplete="off" checked id="ARMA" disabled> ARMA<br>
            <input type="checkbox" autocomplete="off" checked id="NOMBRES" disabled> APELLIDOS Y NOMBRES<br>
            <input type="checkbox" autocomplete="off" id="EDAD"> EDAD<br>
            <input type="checkbox" autocomplete="off" id="SITU"> SITUACION ADTMVA<br>
            <input type="checkbox" autocomplete="off" id="NUCLEO"> NUCLEO<br>
            <input type="checkbox" autocomplete="off" id="GRAN_UNIDAD"> GRAN_UNIDAD<br>
            <input type="checkbox" autocomplete="off" id="UNIDAD"> UNIDAD<br>
            <input type="checkbox" autocomplete="off" id="GUARNICION"> GUARNICION<br>
            <input type="checkbox" autocomplete="off" id="EMPLEO"> EMPLEO<br>
            <input type="checkbox" autocomplete="off" id="ANTIGUEDAD"> ANTIGUEDAD<br>
</div>
                        </form>
                          
                        </div>
                        
                    </div>
                 </div>
            </div>
            
            
            <div class="row col-lg-10">
                <div class="col-lg-10">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            SELECCIONE FILTROS
                        </div>
                        <div class="panel-body">
                            
                        <form class="form-horizontal" id="formu" name="formu">
                        <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">Tipo Persona: </label>
                        <div class="col-sm-8">
                        <select id="Tpersona" class="selectpicker show-tick col-sm-12" multiple data-actions-box="true">
                            <option value="01">OFICIALES</option>
                            <option value="02">TCO/SSOO</option>
                        </select>
                        </div>  
                        </div>   
                        
                        <div class="form-group">
                          <label for="inputPassword3" class="col-sm-2 control-label">Grado: </label>
                          <div class="col-sm-8">
                                <select id="Grado"class="selectpicker col-sm-12" multiple data-actions-box="true">    
                                    <optgroup label="OFICIALES" >
                                        <option value="01">GRAL DIV</option>
                                        <option value="02">GRAL BRIG</option>
                                        <option value="03">CRL</option>
                                        <option value="04">TTE CRL</option>
                                        <option value="05">MY</option>
                                        <option value="06">CAP</option>
                                        <option value="07">TTE</option>
                                        <option value="08">SUB TTE</option>
                                    </optgroup>
                                    <optgroup label="TCOS/SSOO" >
                                        <option value="09">TCO JEF SUP</option>
                                        <option value="10">TCO JEF</option>
                                        <option value="11">TCO 1RA</option>
                                        <option value="12">TCO 2DA</option>
                                        <option value="13">TCO 3RA</option>
                                        <option value="14">SO1</option>
                                        <option value="15">SO2</option>
                                        <option value="16">SO3</option>
                                    </optgroup>
                                </select>
                            </div>
                        </div>
   
                            <div class="form-group">
                          <label for="inputPassword3" class="col-sm-2 control-label">Arma: </label>
                          <div class="col-sm-8">
                                <select id="Arma" class="selectpicker col-sm-12" multiple data-actions-box="true">    
                                    <optgroup label="OFICIALES" >
                                        <option value="001">	INF	</option>
                                        <option value="002">	ART	</option>
                                        <option value="003">	CAB	</option>
                                        <option value="004">	ING	</option>
                                        <option value="005">	COM	</option>
                                        <option value="006">	M G	</option>
<option value="007">	INT	</option>
<option value="008">	S MED	</option>
<option value="009">	S ODO	</option>
<option value="010">	S FAR	</option>
<option value="011">	S VET	</option>
<option value="012">	S J E	</option>
<option value="014">	S PSIC	</option>
<option value="022">	PEF	</option>
<option value="025">	SCYTE	</option>   
                                    </optgroup>
                                    <optgroup label="TCOS/SSOO" >
                                        <option value="300">	A I I	</option>
<option value="302">	A I O	</option>
<option value="303">	A I E	</option>
<option value="304">	A I C	</option>
<option value="305">	A C I	</option>
<option value="306">	MUS MIL	</option>
<option value="307">	CHOF MIL	</option>
<option value="308">	M A	</option>
<option value="309">	ENF MIL	</option>
<option value="310">	E V M	</option>
<option value="311">	M V R	</option>
<option value="312">	M E A	</option>
<option value="313">	M E I	</option>
<option value="314">	M V O	</option>
<option value="315">	M C E	</option>
<option value="316">	M MOT	</option>
<option value="317">	O E I	</option>
<option value="318">	O C	</option>
<option value="319">	P M	</option>
<option value="320">	TIR COH	</option>
<option value="321">	A E M	</option>
<option value="322">	A ABSTO	</option>
<option value="323">	A BLIND	</option>
<option value="324">	MAE	</option>
<option value="325">	I M	</option>
<option value="326">	MEAE	</option>
<option value="327">	A INFO	</option>
<option value="329">	S PLAN	</option>
<option value="330">	E M SCHI	</option>
<option value="331">	A INF	</option>
<option value="332">	A ART	</option>
<option value="333">	A CAB	</option>
<option value="334">	AUX ING	</option>
<option value="335">	OEAAe	</option>
<option value="336">	A E M I	</option>
<option value="337">	O C E E	</option>
<option value="338">	M V A	</option>
<option value="339">	M A M	</option>
<option value="340">	M S A E	</option>
<option value="341">	O A S I	</option>
<option value="342">	MCSA	</option>
<option value="343">	ACCOM	</option>
<option value="344">	M E E	</option>
<option value="345">	AUX COM	</option>
<option value="346">	AMSI	</option>
<option value="347">	T/FFEE	</option>
<option value="349">	SSGG	</option>
<option value="361">	T/INF	</option>
<option value="362">	T/CAB	</option>
<option value="363">	T/BLIND	</option>
<option value="364">	T/ART	</option>
<option value="365">	T/ING	</option>
<option value="366">	T/COM	</option>
<option value="367">	T/CCOM	</option>
<option value="368">	T/MEC AUT	</option>
<option value="369">	T/MEC AERO	</option>
<option value="370">	T/ADM	</option>
<option value="371">	T/MEP	</option>
<option value="372">	T/MAM	</option>
<option value="373">	T/ENF MIL	</option>
<option value="374">	T/MUS MIL	</option>
<option value="376">	T/MECTEL	</option>
<option value="377">	T/MEC AVIO	</option>
<option value="378">	T/AGROP	</option>
<option value="379">	T/GEOM	</option>
<option value="380">	T/GASTRO	</option>
<option value="381">	T/CHOF MIL	</option>
<option value="383">	T/OMFB	</option>
<option value="384">	TRA/IDIOMAS	</option>
<option value="400">	CART	</option>

                                    </optgroup>
                                </select>
                            </div>
                        </div>
                         
                            
                        <label  id="unidades" class="col-sm-12">
                                
                        </label>
                        
                            
                            
                        </form>
                          
                        </div>
                        <div class="panel-footer">
                            <center> 
                            <div >
                                <button  type="button" id="myButton" data-loading-text="Loading..." class="btn btn-primary" autocomplete="off">
                                Buscar
                             </button>
                            </div>
                            </center>
                        </div>
                    </div>
                 </div>
                
            </div>
            
           
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- INICIO FOOTER_LINKS -->
    
    <jsp:include page="../view/front_end/footer_links.jsp" flush="true" />
    
    <!-- FIN DE FOOTER LINKS -->

</body>
<script >

function mostrar_oculto()
{
   alert("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
}

function elegir_opcion(combo) {
//$tipo = jQuery(combo).val();
//alert($tipo);
var cod=document.getElementById("nucleo").value;
//txt=document.formu.nucleo.options[document.formu.nucleo.selectedIndex].text;
//document.formu.favorito.value=cod;
alert(cod);
          
}


$(document).ready(function()
{
	var query;
        var IdTipPersona;
        var IdGrado;
        var IdArma;
	$('#myButton').on('click', function () {
	    var $btn = $(this).button('loading')
	   
	    $( "#DNI" ).prop( "checked", true );
	    $( "#CIP" ).prop( "checked", true );
	    $( "#GRADO" ).prop( "checked", true );
	    $( "#ARMA" ).prop( "checked", true );
	    $( "#NOMBRES" ).prop( "checked", true );
	    
	    if( $('#DNI').prop('checked') ) {
	    	query="SELECT DNI"
	        
	    }
	    if( $('#CIP').prop('checked') ) {
	    	query=query+",CIP"
	        
	    }
	    if( $('#GRADO').prop('checked') ) {
	    	query=query+",GRADO"
	        
	    }
	    if( $('#ARMA').prop('checked') ) {
	    	query=query+",ARMA"
	        
	    }
	    if( $('#NOMBRES').prop('checked') ) {
	    	query=query+",NOMBRES"
	        
	    }
	    if( $('#EDAD').prop('checked') ) {
	    	query=query+",EDAD"
	        
	    }	       
	    if( $('#SITU').prop('checked') ) {
	    	query=query+",SITU"
	        
	    }
	    if( $('#NUCLEO').prop('checked') ) {
	    	query=query+",NUCLEO"
	        
	    }
	    if( $('#GRAN_UNIDAD').prop('checked') ) {
	    	query=query+",GRAN_UNIDAD"
	        
	    }
	    if( $('#UNIDAD').prop('checked') ) {
	    	query=query+",UNIDAD"
               
	    }
	    if( $('#GUARNICION').prop('checked') ) {
	    	query=query+",GUARNICION"
	        
	    }
	    if( $('#EMPLEO').prop('checked') ) {
	    	query=query+",EMPLEO"
	        
	    }
	    if( $('#ANTIGUEDAD').prop('checked') ) {
	    	query=query+",ANTIGUEDAD"
	       
	    }
	    
	    alert(query);
	    $btn.button('reset');
	  })
        
        $( "#NUCLEO" ).click(function() {
            $("#unidades").empty();
            if( $('#NUCLEO').prop('checked') ) {
                $("#unidades").empty();
	    	$( "#unidades" ).append( '<div class="form-group">'+
                                         '<label for="inputPassword3" class="col-sm-2 control-label">Nucleo: </label>'+
                                         '<div class="col-sm-8">'+
                                          '<select id="nucleo" name="nucleo" onchange="elegir_opcion(this);" class="btn btn-default dropdown-toggle col-sm-12 ">'+
                                          '<%
                                              LinkedList<ReporteBean> lista = Reporte_Controller.getNucleos();
                                              for(int i=0;i<lista.size();i++){
                                           %>'+       
                                                '<option value="<%=lista.get(i).getNucleo_cod() %>"><%=lista.get(i).getNucleo_desc() %></option>'+
                                                
                                          '<% } %>'+
                                          
                                          '</select>'+
                                          '</div>'+
                                          '</div>');
            }else{
               $("#unidades").empty();
               $("#UNIDAD").prop('checked', false);
               $("#GRAN_UNIDAD").prop('checked', false);
            }
        });
        $( "#GRAN_UNIDAD" ).click(function() {
            if( $('#GRAN_UNIDAD').prop('checked') ) {
                $("#unidades").empty();
	    	$( "#unidades" ).append( '<div class="form-group">'+
                                         '<label for="inputPassword3" class="col-sm-2 control-label">Nucleo: </label>'+
                                         '<div class="col-sm-8">'+
                                          '<select id="nucleo" name="nucleo" onchange="elegir_opcion(this);" class="btn btn-default dropdown-toggle col-sm-12 ">'+
                                          
                                          '<%                                              
                                              for(int i=0;i<lista.size();i++){
                                           %>'+       
                                               '<option value="<%=lista.get(i).getNucleo_cod() %>"><%=lista.get(i).getNucleo_desc() %></option>'+   
                                              
                                           '<% } %>'+
                                          
                                          '</select>'+
                                          '</div>'+
                                          '</div>'+
                                          '<div class="form-group">'+
                                         '<label for="inputPassword3" class="col-sm-2 control-label">GGUU: </label>'+
                                         '<div class="col-sm-8">'+
                                          '<select name="gguu" id="gguu" class="btn btn-default dropdown-toggle col-sm-12 ">'+
                                          '<%
                                             
                                              LinkedList<ReporteBean> lista2 = Reporte_Controller.getGGUU("47");
                                              for(int i=0;i<lista2.size();i++){
                                           %>'+       
                                                '<option value="<%=lista2.get(i).getGguu_cod() %>"><%=lista2.get(i).getGguu_desc() %></option>'+
                                                
                                          '<% } %>'+
                                          
                                          '</select>'+
                                          '</div>'+
                                          '</div>');
                                   $("#NUCLEO").prop('checked', true);
            }else{
               if( $('#NUCLEO').prop('checked') ) {
                $("#unidades").empty();
                $( "#unidades" ).append( '<div class="form-group">'+
                                         '<label for="inputPassword3" class="col-sm-2 control-label">Nucleo: </label>'+
                                         '<div class="col-sm-8">'+
                                          '<select id="nucleo" name="nucleo" onchange="elegir_opcion(this);" class="btn btn-default dropdown-toggle col-sm-12 ">'+
                                          
                                          '<%                                              
                                              for(int i=0;i<lista.size();i++){
                                           %>'+       
                                               '<option value="<%=lista.get(i).getNucleo_cod() %>"><%=lista.get(i).getNucleo_desc() %></option>'+   
                                              
                                           '<% } %>'+
                                          
                                          '</select>'+
                                          '</div>'+
                                          '</div>');
                }
                
                /////
                 if( $('#NUCLEO').prop('checked')&&$('#UNIDAD').prop('checked') ) {
                
                $("#UNIDAD").prop('checked', false);
                
                    }
                /////
            }
        });
        $( "#UNIDAD" ).click(function() {
            if( $('#UNIDAD').prop('checked') ) {
                $("#unidades").empty();
	    	$( "#unidades" ).append( '<div class="form-group">'+
                                         '<label for="inputPassword3" class="col-sm-2 control-label">Nucleo: </label>'+
                                         '<div class="col-sm-8">'+
                                         '<select id="nucleo" name="nucleo" onchange="elegir_opcion(this);" class="btn btn-default dropdown-toggle col-sm-12 ">'+
                                          
                                          '<%                                              
                                              for(int i=0;i<lista.size();i++){
                                           %>'+       
                                               '<option value="<%=lista.get(i).getNucleo_cod() %>"><%=lista.get(i).getNucleo_desc() %></option>'+   
                                              
                                           '<% } %>'+
                                          
                                          '</select>'+
                                          '</div>'+
                                          '</div>'+
                                          '<div class="form-group">'+
                                         '<label for="inputPassword3" class="col-sm-2 control-label">GGUU: </label>'+
                                         '<div class="col-sm-8">'+
                                          '<select name="gguu" id="gguu" class="btn btn-default dropdown-toggle col-sm-12 ">'+
                                          '<%                                                                                          
                                              for(int i=0;i<lista2.size();i++){
                                           %>'+       
                                                '<option value="<%=lista2.get(i).getGguu_cod() %>"><%=lista2.get(i).getGguu_desc() %></option>'+
                                                
                                          '<% } %>'+
                                          
                                          '</select>'+
                                          '</div>'+
                                          '</div>'+'<div class="form-group">'+
                                         '<label for="inputPassword3" class="col-sm-2 control-label">Unidad: </label>'+
                                         '<div class="col-sm-8">'+
                                          '<select class="btn btn-default dropdown-toggle col-sm-12 ">'+
                                          '<%
                                             
                                              LinkedList<ReporteBean> lista3 = Reporte_Controller.getUnidad("0798");
                                              for(int i=0;i<lista3.size();i++){
                                           %>'+       
                                                '<option value="<%=lista3.get(i).getUnidad_cod() %>"><%=lista3.get(i).getUnidad_desc() %></option>'+
                                                
                                          '<% } %>'+
                                          
                                          '</select>'+
                                          '</div>'+
                                          '</div>');
                  $("#NUCLEO").prop('checked', true);
                  $("#GRAN_UNIDAD").prop('checked', true);
            }else{
               
               if( $('#NUCLEO').prop('checked')&&$('#GRAN_UNIDAD').prop('checked') ) {
                $("#unidades").empty();
                $( "#unidades" ).append( '<div class="form-group">'+
                                         '<label for="inputPassword3" class="col-sm-2 control-label">Nucleo: </label>'+
                                         '<div class="col-sm-8">'+
                                          '<select id="nucleo" name="nucleo" onchange="elegir_opcion(this);" class="btn btn-default dropdown-toggle col-sm-12 ">'+
                                          
                                          '<%                                              
                                              for(int i=0;i<lista.size();i++){
                                           %>'+       
                                               '<option value="<%=lista.get(i).getNucleo_cod() %>"><%=lista.get(i).getNucleo_desc() %></option>'+   
                                              
                                           '<% } %>'+
                                          
                                          '</select>'+
                                          '</div>'+
                                          '</div>'+
                                          '<div class="form-group">'+
                                         '<label for="inputPassword3" class="col-sm-2 control-label">GGUU: </label>'+
                                         '<div class="col-sm-8">'+
                                          '<select name="gguu" id="gguu" class="btn btn-default dropdown-toggle col-sm-12 ">'+
                                          '<%                                                                                          
                                              for(int i=0;i<lista2.size();i++){
                                           %>'+       
                                                '<option value="<%=lista2.get(i).getGguu_cod() %>"><%=lista2.get(i).getGguu_desc() %></option>'+
                                                
                                          '<% } %>'+                                          
                                          '</select>'+
                                          '</div>'+
                                          '</div>');
        }
            }
        });
        
        
          
          
        $("select#Tpersona").on("change", function(value){
                var This      = $(this);
                IdTipPersona = $(this).val();
                alert(IdTipPersona);
        });
        $("select#Grado").on("change", function(value){
                var This      = $(this);
                IdGrado = $(this).val();
                alert(IdGrado);
        });
        $("select#Arma").on("change", function(value){
                var This      = $(this);
                IdArma = $(this).val();
                alert(IdArma);
        });
        
});
</script>
</html>
