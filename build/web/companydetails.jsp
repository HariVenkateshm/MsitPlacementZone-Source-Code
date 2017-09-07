<%-- 
    Document   : companydetails
    Created on : Jun 3, 2017, 11:19:25 AM
    Author     : SaiDeva
--%>

<%@page import="msitplacement.Postcompany"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="msitplacement.Comments"%>
<%@ page import="java.util.*,org.hibernate.cfg.*" %>
<%! String Companyname;String Remarks;String about; Session session1 = null; %>
<head>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link rel="stylesheet" href="css/comment.css">
    <style>
#interview {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#interview td, #interview th {
    border: 1px solid #ddd;
    padding: 8px;
}

#interview tr:nth-child(even){background-color: #f2f2f2;}

#interview tr:hover {background-color: #ddd;}

#interview th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: rgb(0,30,34);
    color: white;
}
</style>
</head>
<h2 align="center">INTERVIEW SCHEDULE</h2>
<table id="interview">
  <tr>
    <th width="25%">Company_Name</th>
    <th width="50%">Remarks</th>
    <th width="50%">About</th>
<!--    <th width="25%">Details</th>-->
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
    Companyname = request.getParameter("id");
     System.out.println("dfghjk "+Companyname);
Configuration cf=new Configuration();
cf.configure();
SessionFactory sf = cf.buildSessionFactory();
session1 =sf.openSession();
//Using from Clause
String SQL_QUERY =" from Postcompany where companyname = :cname  ";
Query query = session1.createQuery(SQL_QUERY);

query.setParameter("cname", Companyname);
Iterator it=query.iterate();
if(!it.hasNext())
{
   %>

<tr>
<td>No data Found</td>

</tr>
<%
}
while(it.hasNext())
{
Postcompany e=(Postcompany)it.next();
Companyname=e.getCompanyname();
Remarks=e.getJobdesc();
about=e.getAbout();
%>  

<body>
   <div class="main">
      <div class="one">
<!--        <div class="register">
          <h3>Company Details</h3>
          
              <div class="sub">
               <label for="jobd">Company Name</label>
             <textarea name="sub"><%=Companyname%></textarea>
           </div>
            
            <div class="des">
                <label for="qst">Remarks</label>
                <textarea name="comnt"><%=Remarks%></textarea>
            </div>
              <div>
           <label for="reply">About</label>
           <textarea name="reply"><%=about%></textarea>
            </div>
  
          </div>
        </div>-->
<!--<div id='dv1'>
               
                    
               <p>Company_name : <%=Companyname%></textarea></p>
               <p>Remarks :<%=Remarks%></textarea></p>
               <p>About :<%=about%></textarea></p>
               <hr>
</div>-->
<tr>
    <td><%=Companyname%></td>
    <td><%=Remarks%></td>
    <td><%=about%></td>

  </tr>
  
</tr>
      </div>
      
<!--<div id='dv1'>
               <h1> Company Details</h1>
                    
               <p>Company Name : <textarea name="sub"><%=Companyname%></textarea></p>
               <p>Description :<textarea name="comnt"><%=Remarks%></textarea></p>
               <p>Reply :<textarea name="reply"><%=about%></textarea></p>
</div>-->
   
<%
}
session1.close();
%>
</body>
</html>

