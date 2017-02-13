/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;


public class ReporteBean {

String nucleo_cod;
String nucleo_desc;

public ReporteBean(String nucleo_cod,String nucleo_desc){
    this.nucleo_cod=nucleo_cod;
    this.nucleo_desc=nucleo_desc;
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

   




}
