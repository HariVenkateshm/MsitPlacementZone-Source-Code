/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package msitplacement;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author SaiDeva
 */
@WebServlet(name = "Change_Password", urlPatterns = {"/Change_Password"})
public class Change_Password extends HttpServlet {

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
            String currr,newpassword,cmpass;
        
        currr=request.getParameter("username");
        
        newpassword=request.getParameter("password");
        cmpass=request.getParameter("password_c");
        
        
        JavaMD5Hash md5hash= new JavaMD5Hash();
        String pass= md5hash.md5(newpassword);
        //String old=md5hash.md5(currr);
        HttpSession s=request.getSession(false);
        String n=(String)s.getAttribute("username");
        String ta=(String)s.getAttribute("table");
        //System.out.println("+++++++++++++++++++++++++++++++++++++++++++++++++++==="+ta);
        SessionFactory sess=new Configuration().configure().buildSessionFactory();
        org.hibernate.Session ss=sess.openSession();
        Transaction tr=ss.beginTransaction();  
        if(ta=="Mentor")
        {
             Query q=ss.createQuery("update  Mentor set password= :e where name= :mentor");  
        q.setParameter("e",pass);
        q.setParameter("mentor",n); 
        int status=q.executeUpdate(); 
        System.out.println(status);  
        tr.commit();
        ss.close();
        }
        else if(ta=="Student")
        {
             Query q=ss.createQuery("update  Student set password= :e where rollnumber= :mentor");  
        q.setParameter("e",pass);
        q.setParameter("mentor",n); 
        
        int status=q.executeUpdate(); 
        System.out.println(status);  
        tr.commit();
        ss.close();
        }
        else
        {
             Query q=ss.createQuery("update  Pc set password= :e where name= :mentor");  
        q.setParameter("e",pass);
        q.setParameter("mentor",n); 
        int status=q.executeUpdate(); 
        System.out.println(status);  
        tr.commit();
        ss.close();
        }
        
        
  
        
        out.println("<h1>Updated successfully!</h1>");

        String redirectURL = "./changepassword.jsp";
                response.sendRedirect(redirectURL);
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Change_Password</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Change_Password at " + request.getContextPath() + "</h1>");
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
