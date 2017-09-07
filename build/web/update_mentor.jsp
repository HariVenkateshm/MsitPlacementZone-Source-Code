<%-- 
    Document   : update_mentor
    Created on : May 29, 2017, 3:43:33 PM
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
String mentorname=request.getParameter("a");
String  email=request.getParameter("b");
String password=request.getParameter("c");
String phonenumber=request.getParameter("d");
String sub=request.getParameter("s1");
%>

<div class="main">
      <div class="one">
        <div class="register">
          <h3>Update Mentor</h3>
          <form id="reg-form" action="Update_Mentor">
            <div>
              <label for="name" >Name</label>
              <input type="text" id="name" name="name" spellcheck="false" value="<%=mentorname%>"/>
            </div>
            <div>
                <label for="email" >Email</label>
              <input type="text" id="email" name="email" spellcheck="false" value="<%=email%>"/>
            </div>
            
            <div>
              <label for="password">Password</label>
              <input type="password" id="password" name="password" value="<%=password%>"/>
            </div>
            
              <div>
              <label for="phoneno">Phone number</label>
              <input type="number" id="phoneno" name="phoneno" value="<%=phonenumber%>"/>
            </div>
            
            <div>
              <label></label>
              <input type="submit" value="Update" id="create-account" class="button"/>
            </div>
          </form>
          <!-- <div class="sep">
            <span class="or">OR</span>
          </div> -->
          <!-- <div class="connect">
            <div class="social-buttons facebook">
              <a href="#">
                <span>Facebook</span>
              </a>
            </div>
            <div class="social-buttons twitter">
              <a href="#">
                <span>Twitter</span>
              </a>
            </div> -->
          </div>
        </div>
      </div>
      
      
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/addmentor.js"></script>
</body>
</html>
