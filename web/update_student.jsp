<%-- 
    Document   : update_student
    Created on : May 30, 2017, 12:18:01 PM
    Author     : SaiDeva
--%>
<%@page import="org.hibernate.Query"%>
<%@ page import="java.util.*,msitplacement.*,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,org.hibernate.cfg.Configuration" %>
<head>
  <meta charset="UTF-8">
  <title>Add Mentor</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link rel="stylesheet" href="css/addmentor.css">
</head>

<body>
    <%  
        HttpSession s=request.getSession(false);
        String username=(String)s.getAttribute("username");
        System.out.println("admiiiiiiiiiiiiiiiiiiiiiiiiiiiiiinnnnnnnnnn"+username);
           if(username==null)
           {
               System.out.println("if condistion username:- "+username);
                response.sendRedirect("index.jsp");
           }    
    %>  
    
<%
    String student_name,rollno,password,gender,email,status,phoneno,Mastersp,Btechp,Interp,SSCp,yeargap;
 
   student_name=request.getParameter("a");
   rollno=request.getParameter("b");
   password=request.getParameter("c");
   gender=request.getParameter("d");
   email=request.getParameter("e");
   Mastersp=request.getParameter("f");
   Btechp=request.getParameter("g");
   Interp=request.getParameter("h");
   SSCp=request.getParameter("i");
   yeargap=request.getParameter("j");
   phoneno=request.getParameter("l");
   status=request.getParameter("k");
   String sub=request.getParameter("s1");
%>

<div class="main">
      <div class="one">
        <div class="register">
          <h3>Add Single Student</h3>
          <form id="reg-form" action="Update_Student_Servlet">
            <div>
              <label for="sname">Full Name</label>
              <input type="text" id="name" name="sname" spellcheck="false" value="<%=student_name%>"/>
            </div>
            
            <div>
              <label for="rollno">Roll Number</label>
              <input type="text" id="rollno" name="rollno" spellcheck="false" value="<%=rollno%>" />
            </div>
           
               <div>
              <label for="password">gender</label>
              <input type="text" id="gender" name="gender" spellcheck="false" value="<%=gender%>"/>
            </div>
             <div>
              <label for="email">Email</label>
              <input type="text" id="email" name="email" spellcheck="false" value="<%=email%>"/>
            </div>
              <div>
              <label for="mastersp">Masters Percent</label>
              <input type="text" id="mastersp" name="mastersp" spellcheck="false" value="<%=Mastersp%>"/>
            </div>
              <div>
              <label for="btechp">Btech Percent</label>
              <input type="text" id="btechp" name="btechp" spellcheck="false" value="<%=Btechp%>"/>
            </div>
              <div>
              <label for="interp">Inter Percent</label>
              <input type="text" id="interp" name="interp" spellcheck="false" value="<%=Interp%>"/>
            </div>
              <div>
              <label for="sscp">SSC Percent</label>
              <input type="text" id="sscp" name="sscp" spellcheck="false" value="<%=SSCp%>"/>
            </div>
           <div>
              <label for="ygap">Year Gap</label>
              <input type="text" id="ygap" name="ygap" spellcheck="false" value="<%=yeargap%>"/>
            </div>   
           <div>
              <label for="status" >Status</label>
              <input type="text" id="status" name="status" spellcheck="false" value="<%=status%>"/>
            </div>   
           <div>
              <label for="status">Phone Number</label>
              <input type="text" id="phone" name="phone" spellcheck="false" value="<%=phoneno%>" />
            </div>   
              
            <div>
              <label></label>
              <input type="submit" value="Update Student" id="create-account" class="button"/>
            </div>
          </form>
          </div>
        </div>
      </div>
      
      
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/addpc.js"></script>
</body>
</html>
