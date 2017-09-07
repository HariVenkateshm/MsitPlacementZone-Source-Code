package msitplacement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.nio.file.Paths;
//import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Sindhu
 */
@MultipartConfig
@WebServlet(name = "AddMultipleStudent", urlPatterns = {"/AddMultipleStudent"})
public class AddMultipleStudent extends HttpServlet {

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
        //String contentType = request.getContentType();
        // String description = request.getParameter("description"); // Retrieves <input type="text" name="description">
      Part filePart; // Retrieves <input type="file" name="file">
        filePart = request.getPart("file");
        //String fileName = Paths.get(filePart.getSubmittedFileName).getFileName().toString(); // MSIE fix.
        InputStream fileContent = filePart.getInputStream();
		//if (contentType.contains("multipart")) {
			BufferedReader reader = new BufferedReader(new InputStreamReader(fileContent));
			String data= null;
                        String Roll_Number,password,FullName,Gender,status,email, phone;
                        float master,btech,inter,ssc,gap=0;
                        List<Student> students = new ArrayList<>();
                        PrintWriter out = response.getWriter();
                        //out.print(reader.readLine());
			try {
                            while( (data = reader.readLine()) != null) {
                                
                                    if(data.startsWith("--")) {
                                        continue;
                                    } else {
                                            String[] s=data.split(",");
                                            //String dateString = "1993-12-30";
                                            //DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                                            //Date myDate = formatter.parse(dateString);
                                             Roll_Number=s[0];
                                             FullName=s[1];
                                             password=s[0];
                                             Gender=s[3];
                                              email=s[4];
                                             master=Float.parseFloat(s[5]);
                                             btech=Float.parseFloat(s[6]);
                                             inter=Float.parseFloat(s[7]);
                                             ssc=Float.parseFloat(s[8]);
                                             gap=Float.parseFloat(s[9]);
                                             status=s[10];
                                             phone=s[11];
                                            JavaMD5Hash md5hash= new JavaMD5Hash();
      
                                            String pass= md5hash.md5(password);
                                             students.add(new Student(Roll_Number,FullName,pass,Gender,email,master, btech, inter,ssc,gap,status,phone));
                                             //out.println("+++++++++++++++++"+students);
                                    }
                                
                            }
                             SessionFactory sf=new Configuration().configure().buildSessionFactory();
                             Session session=sf.openSession();
                             Transaction tr=session.beginTransaction();
                             int i=0;
                             for(Student student : students) {
                                // out.println("-------"+student);
                                session.save(student);
                                if ( i % 20 == 0 ) { 
                                 session.flush();
                                session.clear();
                                 }
                                i++;
                              }
                                tr.commit();
                                session.close();
			}
                        catch (Exception e) {
				e.printStackTrace();
			}
                        response.sendRedirect("student_details.jsp");
                //}
        
        
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
