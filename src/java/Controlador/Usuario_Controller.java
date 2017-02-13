/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Bean.UsuarioBean;
import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Usuario_Controller {
    
    public boolean Autentificacion(String nro_admin, String nro_dni){
        
        boolean status = false;
        
        try{
           Conexion c=new Conexion();
           Connection  con=c.getConnection();                 
           PreparedStatement ps=con.prepareStatement("SELECT VMILITARES_DNI,VMILITARES_NROADMIN FROM\n" +
           "PERSONAL.PERSONAL_DATGRLS PDR, PERSONAL.PERSONAL_MILITARES PM WHERE PDR.VDATGRLS_DNI=PM.VMILITARES_DNI AND VMILITARES_NROADMIN=? \n" +
           "AND VMILITARES_DNI=?");
               
           ps.setString(1,nro_admin);
           ps.setString(2,nro_dni);
           ResultSet rs=ps.executeQuery();
           
           status=rs.next();
         
        }catch(Exception e){
            System.err.println("Error" +e); 
        }        
        return status;
    }
    
    public UsuarioBean BuscarUsuario(String nro_admin){
          UsuarioBean u=new UsuarioBean();
          try{
        Conexion c=new Conexion();
        Connection  con=c.getConnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("SELECT VDATGRLS_APELLPAT ||' ' || VDATGRLS_APELLMAT ||', '|| VDATGRLS_NOMBRES AS NOMBRES FROM\n" +
        "PERSONAL.PERSONAL_DATGRLS PDR, PERSONAL.PERSONAL_MILITARES PM WHERE PDR.VDATGRLS_DNI=PM.VMILITARES_DNI AND VMILITARES_NROADMIN='"+nro_admin+"'");
        
        while(rs.next()){            
            u.setU_nombres(rs.getString("NOMBRES"));
        }
        
        }catch(Exception e){
           e.printStackTrace();
        }   
         return u; 
      }
    
     //public static void main(String[] args) throws SQLException { 
     //   Usuario_Controller v=new Usuario_Controller();
        
    //    System.out.print(v.BuscarUsuario("121108000"));
    //}
    
}
