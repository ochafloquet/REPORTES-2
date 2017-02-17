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
      LinkedList<ReporteBean> listaNucleos=new LinkedList<ReporteBean>();
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
            listaNucleos.add(nucleo);
         }
         rs.close();
         st.close();         
      }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listaNucleos;
   }
    
    
    public static LinkedList<ReporteBean> getGGUU(String cod_nucleo)
   {
      LinkedList<ReporteBean> listaGGUU=new LinkedList<ReporteBean>();
      try
      {
        Conexion c=new Conexion();
        Connection  con=c.getConnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("SELECT distinct(PACT.VACTIVIDAD_CODIGO),PACT.VACTIVIDAD_DESCOR \n" +
        "FROM PERSONAL.PERSONAL_ACTIVIDAD PACT,\n" +
        "PERSONAL.PERSONAL_NUCLEOS NUCL,\n" +
        "PERSONAL.PERSONAL_UNIDADES UNID\n" +
        "WHERE NUCL.VNUCLEOS_CODIGO=UNID.VNUCLEOS_CODIGO AND \n" +
        "UNID.VACTIVIDAD_CODIGO=PACT.VACTIVIDAD_CODIGO AND NUCL.VNUCLEOS_CODIGO='"+cod_nucleo+"'");
         while (rs.next())
         {
            ReporteBean gguu = new ReporteBean();
            gguu.setGguu_cod(rs.getString(1));
            gguu.setGguu_desc(rs.getString(2));            
            listaGGUU.add(gguu);
         }
         rs.close();
         st.close();         
      }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listaGGUU;
   }
    
    
    public static LinkedList<ReporteBean> getUnidad(String cod_gguu)
    {
        LinkedList<ReporteBean> listaUnidad= new LinkedList<ReporteBean>();
        try{
           Conexion c=new Conexion();
           Connection con=c.getConnection();
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("SELECT DISTINCT(UNID.VUNIDADES_CODIGO),UNID.VUNIDADES_DESCOR FROM\n" +
          "PERSONAL.PERSONAL_UNIDADES UNID,PERSONAL.PERSONAL_ACTIVIDAD ACT\n" +
          "WHERE UNID.VACTIVIDAD_CODIGO=ACT.VACTIVIDAD_CODIGO AND ACT.VACTIVIDAD_CODIGO='"+cod_gguu+"'");
           while(rs.next()){
               ReporteBean unidad=new ReporteBean();
               unidad.setUnidad_cod(rs.getString(1));
               unidad.setUnidad_desc(rs.getString(2));
               listaUnidad.add(unidad);
           }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaUnidad;
    }
    
    
     public static LinkedList<ReporteBean> getGrados()
   {
      LinkedList<ReporteBean> listaGrados=new LinkedList<ReporteBean>();
      try
      {
        Conexion c=new Conexion();
        Connection  con=c.getConnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("SELECT VGRADOS_CODIGO,VGRADOS_DESCOR FROM PERSONAL.PERSONAL_GRADOS WHERE VGRADOS_CODIGO IN('000','001','002','003','004','005','006','007')\n" +
        "UNION\n" +
        "SELECT VGRADOS_CODIGO, VGRADOS_DESCOR FROM PERSONAL.PERSONAL_GRADOS WHERE VGRADOS_CODIGO IN('212','213','214','204','203','202','201','200')\n" +
        "ORDER BY 1 ASC");
         while (rs.next())
         {
            ReporteBean grado = new ReporteBean();
            grado.setGrado_cod(rs.getString(1));
            grado.setGrado_desc(rs.getString(2));
            listaGrados.add(grado);
         }
         rs.close();
         st.close();         
      }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listaGrados;
   }
    
     
     
      public static LinkedList<ReporteBean> getArmas()
   {
      LinkedList<ReporteBean> listaArmas=new LinkedList<ReporteBean>();
      try
      {
        Conexion c=new Conexion();
        Connection  con=c.getConnection();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("SELECT VARMAS_CODIGO,VARMAS_DESCOR FROM PERSONAL.PERSONAL_ARMAS\n" +
        "WHERE VARMAS_CODIGO NOT IN('999','000') ORDER BY VARMAS_CODIGO ASC ");
         while (rs.next())
         {
            ReporteBean arma = new ReporteBean();
            arma.setArma_cod(rs.getString(1));
            arma.setArma_desc(rs.getString(2));
            listaArmas.add(arma);
         }
         rs.close();
         st.close();         
      }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listaArmas;
   }
    
    public static void main(String[] args) throws SQLException { 
       Reporte_Controller v=new Reporte_Controller();        
       LinkedList<ReporteBean> lista = Reporte_Controller.getGrados();
        for (int i=0;i<lista.size();i++)
        {
            System.out.println("<tr>");
           System.out.println("<td>"+lista.get(i).getGrado_cod()+"</td>");
           System.out.println("<td>"+lista.get(i).getGrado_desc()+"</td>");
           System.out.println("</tr>");
        }
        
    }
    
    
}
