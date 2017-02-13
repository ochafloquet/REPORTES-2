/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    
    private String USER="47907613";
    private String PASSWORD="ARAMOSRO$";
    private String HOST="10.64.1.94";
    private String SID="bdcopere1";    
    private String PORT="1521";
    private String CLASSNAME="oracle.jdbc.OracleDriver";
    private String URL="jdbc:oracle:thin:@"+HOST+":"+PORT+":"+SID+"";
    private Connection con;
   
 public Conexion(){
        try{
           Class.forName(CLASSNAME);
           con=DriverManager.getConnection(URL, USER, PASSWORD);
        }catch(ClassNotFoundException e){
            System.err.println("ERROR "+e);
        }catch(SQLException e){
            System.err.println("ERROR "+e);
        }
    }
    
    public Connection getConnection(){
        return con;
    }
       
    // public static void main(String[] args) throws SQLException { 
    //    Conexion v=new Conexion();
        
     //   System.out.print(v.getConnection());
   // }
    
    
}



