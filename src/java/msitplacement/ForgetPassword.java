/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package msitplacement;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author SaiDeva
 */
@WebServlet(name = "ForgetPassword", urlPatterns = {"/ForgetPassword"})
public class ForgetPassword extends HttpServlet {

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
    HttpSession s=request.getSession();
    String uname,pass,pswd;
    
    JavaMD5Hash md5alg=new JavaMD5Hash();
    Send_Password sp= new Send_Password();
     String username = request.getParameter("uname");
     System.out.println("22222222222222"+username);
      SessionFactory factory = new Configuration().configure().buildSessionFactory();   
  System.out.println("Test 4");
  org.hibernate.Session session = factory.openSession();
  String query = "email,password from Student login where rollnumber=?";
  Query queryObj = session.createQuery(query);
  queryObj.setString(0, username);
  session.beginTransaction();
  List<Mentor> records = queryObj.list();
  if(records.size()>0)
  {
      Student st=new Student();
      uname=st.getEmail();
      pass=st.getPassword();
      pswd=md5alg.md5(pass);
      System.out.println("222222222222222222222222222"+uname);
      System.out.println("111111111111111"+pswd);
      sp.Send_Password(uname, pswd);
       
  }
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ForgetPassword</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgetPassword at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
