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
                    <h1 class="page-header">Reportes</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-8">
                   
                    <form class="form-horizontal">
  

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Seleccione: </label>
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
                <!-- /.col-lg-8 -->
                
                <!-- /.col-lg-4 -->
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

</html>
