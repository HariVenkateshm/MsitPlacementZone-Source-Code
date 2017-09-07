<%-- 
    Document   : pc_details
    Created on : May 29, 2017, 5:44:26 PM
    Author     : SaiDeva
--%>


<%@ page import="java.util.*,msitplacement.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! String pcname;String rollno; String email;String password;String phonenumber;Session session1; %>


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
        <h2 align="center"> PC Details</h2>         
  <table class="table table-hover">
    <thead>
      <tr style="background: rgb(0,30,34);color: white">
        <th>PC Name</th>
        <th>Roll Number</th>
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
Query query = session1.createQuery("from Pc");
Iterator it=query.iterate();
while(it.hasNext())
{
Pc as=(Pc)it.next();
pcname=as.getName();
rollno=as.getRollnumber();
email = as.getEmail();
//password=as.getPassword();
phonenumber=as.getPhonenumber();
%>     
<tbody>
      <tr>
       <td><%=pcname%></td>
<td><%=rollno%></td>
<td><%=email%></td>
<td><%=phonenumber%></td>
<td><a href="./update_pc.jsp?a=<%=pcname%>&b=<%=rollno%>&c=<%=email%>&d=<%=password%>&e=<%=phonenumber%>" temp_href="./update_pc.jsp?a=<%=pcname%>&b=<%=rollno%>&c=<%=email%>&e=<%=phonenumber%>">Edit</a></td>
<td><a href="./Delete_Pc?b=<%=rollno%>" temp_href="./Delete_Pc?b=<%=rollno%>">Delete</a></td>

      </tr>
<%
}
session1.close();
%>
</tbody>
  </table>
</div>
</body>
</html>
