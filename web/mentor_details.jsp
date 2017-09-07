<%-- 
    Document   : mentor_details
    Created on : May 29, 2017, 3:04:11 PM
    Author     : SaiDeva
--%>

<%@ page import="java.util.*,msitplacement.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! String date; String mentorname; String email;String password;String phonenumber;Session session1; %>
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
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h2 align="center"> Mentor Details</h2>         
  <table class="table table-hover">
    <thead>
      <tr style="background: rgb(0,30,34);color: white">
        <th>Mentor Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
                           
<%
Configuration cf=new Configuration();
SessionFactory sf = cf.configure().buildSessionFactory();

session1 =sf.openSession();
//Using from Clause
Query query = session1.createQuery("from Mentor");
Iterator it=query.iterate();
while(it.hasNext())
{
Mentor as=(Mentor)it.next();
mentorname=as.getName();
email = as.getEmail();
//password=as.getPassword();
phonenumber=as.getPhonenumber();
%>     

<tbody>
      <tr>
       <td><%=mentorname%></td>
<td><%=email%></td>
<td><%=phonenumber%></td>
<td><a href="./update_mentor.jsp?a=<%=mentorname%>&b=<%=email%>&c=<%=password%>&d=<%=phonenumber%>" temp_href="./update_mentor.jsp?a=<%=mentorname%>&b=<%=email%>&d=<%=phonenumber%>">Edit</a></td>
<td><a href="./Delete_Mentor?a=<%=mentorname%>" temp_href="./Delete_Mentor?a=<%=mentorname%>">Delete</a></td>
 </tr>

<%
}
session1.close();
%>
</tbody>
</table>
</body>
</html>