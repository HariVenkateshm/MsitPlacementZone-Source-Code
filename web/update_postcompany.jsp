<%-- 
    Document   : update_postcompany
    Created on : May 30, 2017, 4:02:28 AM
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
String cname=request.getParameter("a");
String jobdes=request.getParameter("b");
byte[] jobd=jobdes.getBytes();
String ab=request.getParameter("c");
byte[] about=ab.getBytes();

%>

<div class="main">
      <div class="one">
        <div class="register">
          <h3>Update Post Company</h3>
          <form id="reg-form" action="Update_Postcompany">
            <div>
              <label for="cname" >Company Name</label>
              <input type="text" id="name" name="cname" spellcheck="false" value="<%=cname%>"/>
            </div>
            <div>
                <label for="jobd" >Job Description</label>
                <textarea name="jobd" value="<%=jobd%>"></textarea>
            </div>
            
             <div>
                <label for="about" >About</label>
                <textarea  name="about" value="<%=about%>"></textarea>
            </div>
            
            
            <div>
              <label></label>
              <input type="submit" value="Update" id="create-account" class="button"/>
            </div>
          </form>
          </div>
        </div>
      </div>
      
      
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/addmentor.js"></script>
</body>
</html>