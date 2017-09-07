<%-- 
    Document   : student_details
    Created on : May 30, 2017, 12:02:56 PM
    Author     : SaiDeva
--%>


<%@ page import="java.util.*,msitplacement.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! String student_name,rollno,password,gender,email,status, phoneno;
        float Mastersp,Btechp,Interp,SSCp,yeargap;
        Session session1; %>
<body>
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
        <h2 align="center"> Student Details</h2>         
  <table class="table table-hover">
    <thead>
      <tr style="background: rgb(0,30,34);color: white"><th>Full Name</th><th>Roll Number</th><th>Gender</th><th>Email</th><th>Masters Percent</th>
        <th>Btech Percent</th><th>Inter Percent</th><th>SSC percent</th><th>Year Gap</th><th>status</th><th>phonenumber</th><th>Edit</th><th>Delete</th></tr>        
    </thead>
                
<%
Configuration cf=new Configuration();
SessionFactory sf = cf.configure().buildSessionFactory();

session1 =sf.openSession();
//Using from Clause
Query query = session1.createQuery("from Student");
Iterator it=query.iterate();
while(it.hasNext())
{
Student pos=(Student)it.next();
student_name=pos.getName();
rollno=pos.getRollnumber();
password=pos.getPassword();
gender=pos.getGender();
email=pos.getEmail();
Mastersp=pos.getMasterpercent();
Btechp=pos.getBtechpercent();
Interp=pos.getInterpercent();
SSCp=pos.getSscpercent();
yeargap=pos.getYeargap();
status=pos.getStatus();
phoneno=pos.getPhonenumber();

%>     
    
<tbody>
      <tr>
<td><%=student_name%></td>
<td><%=rollno%></td>
<td><%=gender%></td>
<td><%=email%></td>
<td><%=Mastersp%></td>
<td><%=Btechp%></td>
<td><%=Interp%></td>
<td><%=SSCp%></td>
<td><%=yeargap%></td>
<td><%=status%></td>
<td><%=phoneno%></td>
<td><a href="./update_student.jsp?a=<%=student_name%>&b=<%=rollno%>&c=<%=password%>&d=<%=gender%>&e=<%=email%>&f=<%=Mastersp%>&g=<%=Btechp%>&h=<%=Interp%>&i=<%=SSCp%>&j=<%=yeargap%>&k=<%=status%>&l=<%=phoneno%>" temp_href="./update_student.jsp?a=<%=student_name%>&b=<%=rollno%>&c=<%=password%>&d=<%=gender%>&e=<%=email%>&f=<%=Mastersp%>&g=<%=Btechp%>&h=<%=Interp%>&i=<%=SSCp%>&j=<%=yeargap%>&k=<%=status%>&l=<%=phoneno%>">Edit</a></td>
<td><a href="./Delete_Student?b=<%=rollno%>" temp_href="./Delete_Student?b=<%=rollno%>">Delete</a></td>

 </tr>


<tr>
</tr>
<%
}
session1.close();
%>
</table>
</body>
</html>
