/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlClasses;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ravindu
 */
@WebServlet(name = "errorHandler", urlPatterns = {"/errorHandler"})
public class errorHandler extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
        processError(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processError(request, response);
    }
    
    private void processError(HttpServletRequest request, HttpServletResponse response)
            throws IOException{
        //Servlet Exceptions analyzing
        Throwable throwable = (Throwable) request.getAttribute("javax.servlet.error.exception");
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        String servletName = (String) request.getAttribute("javax.servlet.error.servlet_name");
        if(servletName == null) {
            servletName = "Unknown";
        }
        String requestUri = (String) request.getAttribute("javax.servlet.error.request_uri");
        if(requestUri == null){
            requestUri = "Uknown";
        }
        
        response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();
          out.write("<html><head><title>Exception/Error Details</title></head><body>");
          if(statusCode != 500){
              out.write("<h3>Error Details</h3>");
              out.write("<strong>Status Code</strong>:"+statusCode+"<br>");
              out.write("<strong>Requested URI</strong>:"+requestUri);
          }else{
              out.write("<h3>Exception Details</h3>");
              out.write("<ul><li>Servlet Name:"+servletName+"</li>");
              out.write("<li>Exception Name:"+throwable.getClass().getName()+"</li>");
              out.write("<li>Requested URI:"+requestUri+"</li>");
              out.write("<li>Exception Message:"+throwable.getMessage()+"</li>");
              out.write("</ul>");
          }
           
          out.write("<br><br>");
          out.write("<a href=\"index.jsp\"> Return To Home Page</a>");
          out.write("</body></html>");
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
