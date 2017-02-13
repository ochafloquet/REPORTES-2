/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author SOPORTE
 */
public class UsuarioBean {
    
    String u_dni;
    String u_nroadmin;
    String u_nombres;
    
   public UsuarioBean(String u_dni,String u_nroadmin,String u_nombres){
       this.u_dni=u_dni;
       this.u_nroadmin=u_nroadmin;
       this.u_nombres=u_nombres;
   } 
   
   public UsuarioBean(){
       
   }

    public String getU_dni() {
        return u_dni;
    }

    public void setU_dni(String u_dni) {
        this.u_dni = u_dni;
    }

    public String getU_nroadmin() {
        return u_nroadmin;
    }

    public void setU_nroadmin(String u_nroadmin) {
        this.u_nroadmin = u_nroadmin;
    }

    public String getU_nombres() {
        return u_nombres;
    }

    public void setU_nombres(String u_nombres) {
        this.u_nombres = u_nombres;
    }
   
    
}
