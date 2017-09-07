/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package msitplacement;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.cfg.Configuration;

/**
 *
 * @author SaiDeva
 */
@WebServlet(name = "loginservlet", urlPatterns = {"/loginservlet"})
public class loginservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 // TODO Auto-generated method stub
 System.out.println("msitplacement.loginservlet.doGet():- ");
 response.sendRedirect("index.jsp");
 }
 @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
     System.out.println("msitplacement.loginservlet.doPost():- ");
     HttpSession s=request.getSession();
     String username = request.getParameter("uname");
     
     String Pc,Student,Mentor;
      System.out.println("Test 1");
      int flag=0;
  String password = request.getParameter("psw");
  JavaMD5Hash md5alg=new JavaMD5Hash();
  String pass=md5alg.md5(password);
  System.out.println("Test 2");
  //HttpSession httpSession = request.getSession();
  System.out.println("Test 3");
  //httpSession.setAttribute("username", username);
  SessionFactory factory = new Configuration().configure().buildSessionFactory();   
  System.out.println("Test 4");
  Session session = factory.openSession();
  if(username.equals("Admin") && password.equals("12345"))
  {
      //System.out.println("1 mentor");
   //httpSession.setAttribute("username", username); 
   //httpSession.setAttribute("username", username);
   getServletContext().getRequestDispatcher("/mentorhomepage.jsp").forward(request, response);
  }
  String query = "from Mentor login where name=? and password=?";
  Query queryObj = session.createQuery(query);
  queryObj.setString(0, username);
  queryObj.setString(1, pass);
  session.beginTransaction();
  List<Mentor> records = queryObj.list();
  
  
  if(records.size()>0)
  {
      //out.println ("<html><body><script>alert('Hello World!');</script></body></html>");
      flag=1;
   System.out.println("1 mentor");
   //httpSession.setAttribute("username", username); 
   //httpSession.setAttribute("username", username);
   
   s.setAttribute("username", username);
   s.setAttribute("table", "Mentor");
   getServletContext().getRequestDispatcher("/mentorhomepage.jsp").forward(request, response);
  }
  
   //session.close();
  //factory.close();
 
  if(flag==0)
  {
  factory = new Configuration().configure().buildSessionFactory();   
  System.out.println("Test 5");
  session = factory.openSession();
  String query1 = "from Pc login where rollnumber=? and password=?";
  Query queryObj1 = session.createQuery(query1);
  queryObj1.setString(0, username);
  queryObj1.setString(1, pass);
  session.beginTransaction();
  
  List<Mentor> records1 = queryObj1.list();
  if(records1.size()>0)
  {
      
      flag=1;
      System.out.println("2 PC");
   s.setAttribute("username", username);
   s.setAttribute("table", "Pc");
   //httpSession.setAttribute("username", username); 
   //httpSession.setAttribute("username", username);
    out.println("<html><head></head><body onload=\"alert('hello')\"></body></html>");
   getServletContext().getRequestDispatcher("/adminhomepage.jsp").forward(request, response);
  }
  }
  
  if(flag==0)
  {
      factory = new Configuration().configure().buildSessionFactory();   
  System.out.println("Test 6");
  session = factory.openSession();
  String query2 = "from Student login where rollnumber=? and password=?";
  Query queryObj2 = session.createQuery(query2);
  queryObj2.setString(0, username);
  queryObj2.setString(1, pass);
  session.beginTransaction();
  List<Mentor> records2 = queryObj2.list();
  if(records2.size()>0)
  {
      flag=1;
      System.out.println("3 Student");
   s.setAttribute("username", username);
   s.setAttribute("table", "Student");
    //HttpSession session=request.getSession();  
        ///httpSession.setAttribute("username",username);  
  // httpSession.setAttribute("username", username);
   
   getServletContext().getRequestDispatcher("/Student_Homepage.jsp").forward(request, response);
  }
  }
   session.close();
  factory.close();
  if(flag==0){
   request.setAttribute("loginstatus", "Invalid Username or Password");
   getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
   //out.println("<h1>Invalid Username or Password" + "</h1>");
  }
  
  }
    
}
