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
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


/**
 *
 * @author J Anusha
 */
@WebServlet(name = "comments_servlet", urlPatterns = {"/comments_servlet"})
public class comments_servlet extends HttpServlet {

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
       
        HttpSession session = request.getSession();
        String var = (String) session.getAttribute("username");
        String Roll_Number,Subject,Question,Reply;
        Roll_Number=(String) session.getAttribute("username");
        System.out.println("--------->"+Roll_Number);
        Subject=request.getParameter("subject");
        Question=request.getParameter("qst");
        Reply=request.getParameter("reply");
        System.out.println(Question);
        int id=1;
        
        
        System.out.println("Roll No ----- >"+Roll_Number);
         SessionFactory sf=new Configuration().configure().buildSessionFactory();
        System.out.println("Session Factory sucess");
        Session s=sf.openSession();
        Transaction tr=s.beginTransaction();
        System.out.println("Transaction");
        Comments cmt=new Comments(Roll_Number,Subject,Question,Reply);
        s.save(cmt);
        out.println("sucess");
        out.println(Question);
        tr.commit();
        s.close();
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet comments_servlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet comments_servlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
String redirectURL = "./comment.jsp";
                response.sendRedirect(redirectURL);
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
