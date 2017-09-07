<%-- 
    Document   : viewreply
    Created on : 2 Jun, 2017, 2:59:02 PM
    Author     : J Anusha
--%>

<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="msitplacement.Comments"%>
<%@ page import="java.util.*,org.hibernate.cfg.*" %>
<%! int Id; String Roll_number; String Subject;String Question;String Reply; Session session1 = null; %>
<head>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link rel="stylesheet" href="css/comment.css">
    <style type="text/css">
        
      
           #dv1
            { 
                border:transparent;  
                margin-left:auto; 
                margin-right:auto;  
                width:550px; 
                border-radius:30px;   
                padding: 55px; 
            }
        
        h2 
            {
                font: 400 40px/1.5 Helvetica, Verdana, sans-serif; 
                
                align-text: center;
            }
       </style>
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
    <h2> View Comment</h2>
<%
     HttpSession sessionss = request.getSession();
        String var = (String) sessionss.getAttribute("username");
        System.out.println("---------------------"+var);
Configuration cf=new Configuration();
cf.configure();
SessionFactory sf = cf.buildSessionFactory();
session1 =sf.openSession();
//Using from Clause
String SQL_QUERY ="from Comments where answer != null and rollnumber =:r";
Query query = session1.createQuery(SQL_QUERY);
query.setParameter("r", var);
Iterator it=query.iterate();
while(it.hasNext())
{
Comments e=(Comments)it.next();
Id=e.getId();
Roll_number=e.getRollnumber();
Subject =  e.getSub();
Question=e.getQuestion();
Reply=e.getAnswer();
%>  

<!--<body>
   <div class="main">
      <div class="one">
        <div class="register">
          <h3>View Comments</h3>
           <div class="sub">
               <label for="jobd">Roll Number</label>
              <textarea name="sub" readonly><%=var%></textarea>
            </div>
              <div class="sub">
               <label for="jobd">Subject</label>
              <textarea name="sub" readonly><%=Subject%></textarea>
            </div>
            
            <div class="des">
                <label for="qst">Question</label>
                <textarea name="comnt" readonly><%=Question%></textarea>
            </div>
              <div>
           <label for="reply">Reply</label>
           <textarea name="reply"><%=Reply%></textarea>
            </div>
  
          </div>
        </div>
      </div>
      
      
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>-->

<div id='dv1'>
               
                    
               <p>Subject : <%=Subject%></textarea></p>
               <p>Description :<%=Question%></textarea></p>
               <p>Reply :<%=Reply%></textarea></p>
               <hr>
</div>
   
<%
}
session1.close();
%>
</body>
</html>

