<%-- 
    Document   : selected_List
    Created on : Jun 5, 2017, 12:25:09 PM
    Author     : SaiDeva
--%>


<%@ page import="java.util.*,msitplacement.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! String Name;String rollno; String email;Session session1; %>


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
        <h2 align="center"> Students List</h2>         
  <table class="table table-hover">
    <thead>
      <tr style="background: rgb(0,30,34);color: white">
        <th>Roll Number</th>
        <th>Name</th>
        <th>Email</th>
        </tr>
    </thead>
        
<%
Configuration cf=new Configuration();
SessionFactory sf = cf.configure().buildSessionFactory();

session1 =sf.openSession();
//Using from Clause
Query query = session1.createQuery("from Student where status='selected'");
Iterator it=query.iterate();
while(it.hasNext())
{
Student as=(Student)it.next();
Name=as.getName();
rollno=as.getRollnumber();
email = as.getEmail();

%>     
<tbody>
      <tr>
       
<td><%=rollno%></td>
<td><%=Name%></td>
<td><%=email%></td>
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
