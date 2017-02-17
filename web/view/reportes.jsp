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
                                    
                                    <%
                                        LinkedList<ReporteBean> lista4 = Reporte_Controller.getGrados();
                                              for(int i=0;i<lista4.size();i++){
                                    %>
                                        <option value="<%=lista4.get(i).getGrado_cod() %>"><%=lista4.get(i).getGrado_desc() %></option>
                                    <% } %>    
                                </select>
                            </div>
                        </div>
   
                            <div class="form-group">
                          <label for="inputPassword3" class="col-sm-2 control-label">Arma: </label>
                          <div class="col-sm-8">
                                <select id="Arma" class="selectpicker col-sm-12" multiple data-actions-box="true">    
                                     
                                     <%
                                        LinkedList<ReporteBean> lista5 = Reporte_Controller.getArmas();
                                              for(int i=0;i<lista5.size();i++){
                                    %>
                                        <option value="<%=lista5.get(i).getArma_cod() %>"><%=lista5.get(i).getArma_desc() %></option>
                                    <% } %>   
                                    
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
