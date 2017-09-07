<%-- 
    Document   : postjob_details
    Created on : May 30, 2017, 3:05:08 AM
    Author     : SaiDeva
--%>



<%@ page import="java.util.*,msitplacement.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! String cname;Date date; String venue;Session session1; %>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    <div class="container">
        <h2 align="center"> Job Details</h2>         
  <table class="table table-hover">
    <thead>
        <tr style="background: rgb(0,30,34);color: white"><th>CompanyName</th><th>Date</th><th>Venue</th><th>Edit</th><th>Delete</th></tr>     
    </thead>
                    
<%
Configuration cf=new Configuration();
SessionFactory sf = cf.configure().buildSessionFactory();

session1 =sf.openSession();
//Using from Clause
Query query = session1.createQuery("from Postjobs order by date(date)");
Iterator it=query.iterate();
while(it.hasNext())
{
Postjobs pos=(Postjobs)it.next();
cname=pos.getCompanyname();
date=pos.getDate();
venue =pos.getVenue();
%>
<tbody
<tr>
<td><%=cname%></td>
<td><%=date%></td>
<td><%=venue%></td>
<td><a href="./uodate_postjob.jsp?a=<%=cname%>&b=<%=date%>&c=<%=venue%>" temp_href="./uodate_postjob.jsp?a=<%=cname%>&b=<%=date%>&c=<%=venue%>"
">Edit</a></td>
<td><a href="./Delete_Postjob?a=<%=cname%>" temp_href="./Delete_Postjob?a=<%=cname%>">Delete</a></td>
</tr>
</tbody>
<%
}
session1.close();
%>
</table>
</body>
</html>
