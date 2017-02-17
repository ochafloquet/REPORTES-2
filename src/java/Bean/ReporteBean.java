/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;


public class ReporteBean {

String nucleo_cod;
String nucleo_desc;

String gguu_cod;
String gguu_desc;

String unidad_cod;
String unidad_desc;

String grado_cod;
String grado_desc;

String arma_cod;
String arma_desc;


public ReporteBean(String nucleo_cod,String nucleo_desc,String gguu_cod,String gguu_desc,String unidad_cod,String unidad_desc,String grado_cod,String grado_desc,String arma_cod,String arma_desc){
    this.nucleo_cod=nucleo_cod;
    this.nucleo_desc=nucleo_desc;
    
    this.gguu_cod=gguu_cod;
    this.gguu_desc=gguu_desc;
    
    this.unidad_cod=unidad_cod;
    this.unidad_desc=unidad_desc;
    
    this.grado_cod=grado_cod;
    this.grado_desc=grado_desc;
    
    this.arma_cod=arma_cod;
    this.arma_desc=arma_desc;
    
}

public ReporteBean(){
    
}

    public String getNucleo_cod() {
        return nucleo_cod;
    }

    public void setNucleo_cod(String nucleo_cod) {
        this.nucleo_cod = nucleo_cod;
    }

    public String getNucleo_desc() {
        return nucleo_desc;
    }

    public void setNucleo_desc(String nucleo_desc) {
        this.nucleo_desc = nucleo_desc;
    }

    public String getGguu_cod() {
        return gguu_cod;
    }

    public void setGguu_cod(String gguu_cod) {
        this.gguu_cod = gguu_cod;
    }

    public String getGguu_desc() {
        return gguu_desc;
    }

    public void setGguu_desc(String gguu_desc) {
        this.gguu_desc = gguu_desc;
    }

    public String getUnidad_cod() {
        return unidad_cod;
    }

    public void setUnidad_cod(String unidad_cod) {
        this.unidad_cod = unidad_cod;
    }

    public String getUnidad_desc() {
        return unidad_desc;
    }

    public void setUnidad_desc(String unidad_desc) {
        this.unidad_desc = unidad_desc;
    }
  

    public String getGrado_cod() {
        return grado_cod;
    }

    public void setGrado_cod(String grado_cod) {
        this.grado_cod = grado_cod;
    }

    public String getGrado_desc() {
        return grado_desc;
    }

    public void setGrado_desc(String grado_desc) {
        this.grado_desc = grado_desc;
    }

    public String getArma_cod() {
        return arma_cod;
    }

    public void setArma_cod(String arma_cod) {
        this.arma_cod = arma_cod;
    }

    public String getArma_desc() {
        return arma_desc;
    }

    public void setArma_desc(String arma_desc) {
        this.arma_desc = arma_desc;
    }
    
    
    


}
