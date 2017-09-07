/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package msitplacement;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author SaiDeva
 */
@WebServlet(name = "Add_Student_Servlet", urlPatterns = {"/Add_Student_Servlet"})
public class Add_Student_Servlet extends HttpServlet {

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
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        String student_name,rollno,password,gender,email,status, phoneno;
        float Mastersp,Btechp,Interp,SSCp,yeargap;
        
        student_name=request.getParameter("sname");
        email=request.getParameter("email");
//        password=request.getParameter("password");
        rollno=request.getParameter("rollno");
        gender=request.getParameter("gender");
        Mastersp=Float.parseFloat(request.getParameter("mastersp"));
         Btechp=Float.parseFloat(request.getParameter("btechp"));
          Interp=Float.parseFloat(request.getParameter("interp"));
           SSCp=Float.parseFloat(request.getParameter("sscp"));
        yeargap=Float.parseFloat(request.getParameter("ygap"));
        phoneno=request.getParameter("phone");
        status=request.getParameter("status");
        JavaMD5Hash md5hash= new JavaMD5Hash();
      
      String pass= md5hash.md5(rollno);
      System.out.println(pass);

       // System.out.println(mentor_name +" "+email +" "+password +" "+phoneno);
        SessionFactory sf=new Configuration().configure().buildSessionFactory();
        System.out.println("Session Factory sucess");
       Session s=sf.openSession();
       
       Transaction tr=s.beginTransaction();
     System.out.println("Transaction");
       Student st=new Student(rollno,student_name,pass,gender,email,Mastersp,Btechp,Interp,SSCp,yeargap,status,phoneno);
       System.out.println("database");
       s.save(st);
       System.out.println("sucess");
       tr.commit();
       s.close();
        
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
              out.println("<h1>Sucessfully Added " + request.getContextPath() + "</h1>");
              
              
               String redirectURL = "student_details.jsp";
                response.sendRedirect(redirectURL);
////            RequestDispatcher requestDispatcher; 
//            requestDispatcher = request.getRequestDispatcher("student_details.jsp");
//            requestDispatcher.forward(request, response);
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Sucess</title>");            
//            out.println("</head>");
//            out.println("<body>");
              
//            out.println("</body>");
//            out.println("</html>");
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(Add_Mentor.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(Add_Mentor.class.getName()).log(Level.SEVERE, null, ex);
        }
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