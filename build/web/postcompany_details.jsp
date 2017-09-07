<%-- 
    Document   : postcompany_details
    Created on : May 30, 2017, 3:57:18 AM
    Author     : SaiDeva
--%>



<%@ page import="java.util.*,msitplacement.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! String cname;String jobd; String about;Session session1; %>
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
        <h2 align="center"> Company Details</h2>         
  <table class="table table-hover">
    <thead>
    <tr style="background: rgb(0,30,34);color: white"><th>Company Name</th><th>Job Description</th><th>About</th><th>Edit</th><th>Delete</th></tr>  
    </thead>
<%
Configuration cf=new Configuration();
SessionFactory sf = cf.configure().buildSessionFactory();

session1 =sf.openSession();
//Using from Clause
Query query = session1.createQuery("from Postcompany");
Iterator it=query.iterate();
while(it.hasNext())
{
Postcompany posc=(Postcompany)it.next();
cname=posc.getCompanyname();
jobd=posc.getJobdesc();
about =posc.getAbout();
%>       
<tbody>
<tr>
<td><%=cname%></td>
<td><%=jobd%></td>
<td><%=about%></td>
<td><a href="./update_postcompany.jsp?a=<%=cname%>&b=<%=jobd%>&c=<%=about%>" temp_href="./update_postcompany.jsp?a=<%=cname%>&b=<%=jobd%>&c=<%=about%>
">Edit</a></td>
<td><a href="./Delete_Company?a=<%=cname%>" temp_href="./Delete_Company?a=<%=cname%>">Delete</a></td>
</tr>
</tbody>
<%
}
session1.close();
%>
</table>
</body>
</html>
