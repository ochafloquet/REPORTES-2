/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Bean.UsuarioBean;
import Controlador.Usuario_Controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SOPORTE
 */
@WebServlet(name = "UsuarioSesion", urlPatterns = {"/UsuarioSesion"})
public class UsuarioSesion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
          Usuario_Controller uc=new Usuario_Controller();
          String nro_admin=request.getParameter("num_cip");
          String nro_dni=request.getParameter("num_dni");
          HttpSession session=request.getSession();
          UsuarioBean u=uc.BuscarUsuario(nro_admin);
          
          if(uc.Autentificacion(nro_admin, nro_dni)){
              session.setAttribute("UserLogin", u.getU_nombres());
              response.sendRedirect("view/home.jsp");              
          }else{
            RequestDispatcher rd=request.getRequestDispatcher("/");  
            rd.include(request,response);
            PrintWriter out = response.getWriter();  
            response.setContentType("text/html");  
            out.println("<script type=\"text/javascript\">");  
            out.println("alert('# CIP y/o Password Incorrecto ....!!');");  
            out.println("</script>");
              
          }           
            
                       
            
           
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
