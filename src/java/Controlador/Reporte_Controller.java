/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Bean.ReporteBean;
import Conexion.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *
 * @author SOPORTE
 */
public class Reporte_Controller {
    
    
    public static LinkedList<ReporteBean> getNucleos()
   {
      LinkedList<ReporteBean> listaContactos=new LinkedList<ReporteBean>();
      try
      {
        Conexion c=new Conexion();
        Connection  con=c.getConnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("SELECT VNUCLEOS_CODIGO,VNUCLEOS_DESCOR FROM PERSONAL.PERSONAL_NUCLEOS WHERE VNUCLEOS_VIGENTE='0'");
         while (rs.next())
         {
            ReporteBean nucleo = new ReporteBean();
            nucleo.setNucleo_cod(rs.getString("VNUCLEOS_CODIGO"));
            nucleo.setNucleo_desc(rs.getString("VNUCLEOS_DESCOR"));            
            listaContactos.add(nucleo);
         }
         rs.close();
         st.close();         
      }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listaContactos;
   }
    
    
    public static void main(String[] args) throws SQLException { 
       Reporte_Controller v=new Reporte_Controller();        
       LinkedList<ReporteBean> lista = Reporte_Controller.getNucleos();
        for (int i=0;i<lista.size();i++)
        {
            System.out.println("<tr>");
           System.out.println("<td>"+lista.get(i).getNucleo_cod()+"</td>");
           System.out.println("<td>"+lista.get(i).getNucleo_desc()+"</td>");
           System.out.println("</tr>");
        }
        
    }
    
    
}
