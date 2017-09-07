<%-- 
    Document   : uodate_postjob
    Created on : May 30, 2017, 3:13:16 AM
    Author     : SaiDeva
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="org.hibernate.Query"%>
<%@ page import="java.util.*,msitplacement.*,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,org.hibernate.cfg.Configuration" %>
<head>
  <meta charset="UTF-8">
  <title>Update Post</title>
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
    Date date;
    String dateString = request.getParameter("b");
       DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
       Date myDate = formatter.parse(dateString);
String cname=request.getParameter("a");
//Date  date=request.getParameter("b");
String venue=request.getParameter("c");

%>

<div class="main">
      <div class="one">
        <div class="register">
          <h3>Update Post Job</h3>
          <form id="reg-form" action="Update_Postjob">
            <div>
              <label for="cname" >Company Name</label>
              <input type="text" id="name" name="cname" spellcheck="false" value="<%=cname%>"/>
            </div>
            <div>
                <label for="date" >Date</label>
              <input type="date" id="date" name="date" spellcheck="false" value="<%=myDate%>"/>
            </div>
            
            <div>
              <label for="venue">Venue</label>
              <input type="text" id="password" name="venue" value="<%=venue%>"/>
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