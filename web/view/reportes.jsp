<%-- 
    Document   : PRUEBA
    Created on : 10/02/2017, 02:11:41 PM
    Author     : SOPORTE
--%>

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

<body>

    <div id="wrapper">

        <!-- INICIO SIDEBAR -->
        
        <jsp:include page="../view/front_end/sidebar.jsp" flush="true" />
        
        <!-- FIN SIDEBAR -->

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Reporte General</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-5">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            DATOS SEGUN CRITERIO
                        </div>
                        <div class="panel-body">
                            
                        <form class="form-horizontal">
  
                        <div class="btn-group" data-toggle="buttons">
    <label class="btn btn-primary active" disabled >
        <input type="checkbox" autocomplete="off" checked id="DNI"> DNI
    </label>
    <label class="btn btn-primary active" disabled >
        <input type="checkbox" autocomplete="off" checked id="CIP"> CIP
    </label>
    <label class="btn btn-primary active" disabled>
        <input type="checkbox" autocomplete="off" checked id="GRADO"> GRADO
    </label>
    <label class="btn btn-primary active" disabled>
        <input type="checkbox" autocomplete="off" checked id="ARMA"> ARMA
    </label>
    <label class="btn btn-primary active" disabled>
        <input type="checkbox" autocomplete="off" checked id="NOMBRES"> APELLIDOS Y NOMBRES
    </label>
    <label class="btn btn-primary">
        <input type="checkbox" autocomplete="off" id="EDAD"> EDAD
    </label>
    <label class="btn btn-primary">
        <input type="checkbox" autocomplete="off" id="SITU"> SITUACION ADTMVA
    </label>
     <label class="btn btn-primary">
        <input type="checkbox" autocomplete="off" id="NUCLEO"> NUCLEO
    </label>
    <label class="btn btn-primary">
        <input type="checkbox" autocomplete="off" id="GRAN_UNIDAD"> GRAN_UNIDAD
    </label>
    <label class="btn btn-primary">
        <input type="checkbox" autocomplete="off" id="UNIDAD"> UNIDAD
    </label>
    <label class="btn btn-primary">
        <input type="checkbox" autocomplete="off" id="GUARNICION"> GUARNICION
    </label>
    <label class="btn btn-primary">
        <input type="checkbox" autocomplete="off" id="EMPLEO"> EMPLEO
    </label>
    <label class="btn btn-primary">
        <input type="checkbox" autocomplete="off" id="ANTIGUEDAD"> ANTIGUEDAD
    </label>                        
</div>
   
                        </form>
                          
                        </div>
                        <div class="panel-footer">
                            Panel Footer
                        </div>
                    </div>
                 </div>
            </div>
            
            
            

            
            
            <div class="row">
                <div class="col-lg-5">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            FILTROS
                        </div>
                        <div class="panel-body">
                            
                        <form class="form-horizontal">
                        <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">Tipo Persona: </label>
                        <div class="col-sm-8">
                        <select class="selectpicker show-tick col-sm-12" multiple data-actions-box="true">
                        <option>OFICIALES</option>
                        <option>TCO/SSOO</option>
                        </select>
                        </div>  
                        </div>   
                            
                        <div class="form-group">
                          <label for="inputPassword3" class="col-sm-2 control-label">Grado: </label>
                          <div class="col-sm-8">
                                <select class="selectpicker col-sm-12" multiple data-actions-box="true">    
                                    <optgroup label="OFICIALES" >
                                        <option>GRAL DIV</option>
                                        <option>GRAL BRIG</option>
                                        <option>CRL</option>
                                        <option>TTE CRL</option>
                                        <option>MY</option>
                                        <option>CAP</option>
                                        <option>TTE</option>
                                        <option>SUB TTE</option>
                                    </optgroup>
                                    <optgroup label="TCOS/SSOO" >
                                        <option>TCO JEF SUP</option>
                                        <option>TCO JEF</option>
                                        <option>TCO 1RA</option>
                                        <option>TCO 2DA</option>
                                        <option>TCO 3RA</option>
                                        <option>SO1</option>
                                        <option>SO2</option>
                                        <option>SO3</option>
                                    </optgroup>
                                </select>
                            </div>
                        </div>
   
                            <div class="form-group">
                          <label for="inputPassword3" class="col-sm-2 control-label">Arma: </label>
                          <div class="col-sm-8">
                                <select class="selectpicker col-sm-12" multiple data-actions-box="true">    
                                    <optgroup label="OFICIALES" >
                                        <option>GRAL DIV</option>
                                        <option>GRAL BRIG</option>
                                        <option>CRL</option>
                                        <option>TTE CRL</option>
                                        <option>MY</option>
                                        <option>CAP</option>
                                        <option>TTE</option>
                                        <option>SUB TTE</option>
                                    </optgroup>
                                    <optgroup label="TCOS/SSOO" >
                                        <option>TCO JEF SUP</option>
                                        <option>TCO JEF</option>
                                        <option>TCO 1RA</option>
                                        <option>TCO 2DA</option>
                                        <option>TCO 3RA</option>
                                        <option>SO1</option>
                                        <option>SO2</option>
                                        <option>SO3</option>
                                    </optgroup>
                                </select>
                            </div>
                        </div>
                            
                        </form>
                          
                        </div>
                        <div class="panel-footer">
                            OFICIALES, TCOS, SOO
                        </div>
                    </div>
                 </div>
                
            </div>
            
            <div><button type="button" id="myButton" data-loading-text="Loading..." class="btn btn-primary" autocomplete="off">
  Buscar
</button></div>
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

$(document).ready(function()
{
	var query;
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
});
</script>
</html>
