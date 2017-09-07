<%-- 
    Document   : filter_students
    Created on : Jun 1, 2017, 2:53:59 PM
    Author     : SaiDeva
--%>
<html>
<head>
<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: rgb(0,30,34);
    color: white;
}
</style>
</head>
<%@ page import="java.util.*,msitplacement.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! Date date;String sname; String email;String rollno;String companyname;String venue; Session session1;Session session2; %>

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
    <h2 align="center">Students</h2>
<table id="customers">
  <tr>
    <th width="25%">RollNo</th>
    <th width="50%">Student name</th>
    <th width="50%">Email</th>
<%
     float  mastersp,btechp,interp,sscp;
        
        mastersp=Float.parseFloat(request.getParameter("mastersp"));
        btechp=Float.parseFloat(request.getParameter("btechp"));
        interp=Float.parseFloat(request.getParameter("interp"));
        sscp=Float.parseFloat(request.getParameter("sscp"));
Configuration cf=new Configuration();
cf.configure();
SessionFactory sf = cf.buildSessionFactory();
session1 =sf.openSession();
//Using from Clause


 String SQL_QUERY_Job ="FROM Postjobs order by date(date)";
Query query1 = session1.createQuery(SQL_QUERY_Job);
Iterator it=query1.iterate();
while(it.hasNext())
{
Postjobs pe=(Postjobs)it.next();
companyname=pe.getCompanyname();
date=pe.getDate();
venue=pe.getVenue(); 
}
session1.close();

Configuration cf2=new Configuration();
cf2.configure();
SessionFactory sf2 = cf2.buildSessionFactory();

session2 =sf2.openSession();
String SQL_QUERY ="FROM Student WHERE masterpercent >= :mastersp and btechpercent >= :btechp and interpercent >= :interp and sscpercent >= :sscp";
Query query = session2.createQuery(SQL_QUERY);
query.setParameter("mastersp", mastersp);
query.setParameter("btechp", btechp);
query.setParameter("interp", interp);
query.setParameter("sscp", sscp);
Iterator itq=query.iterate();
while(itq.hasNext())
{
Student e=(Student)itq.next();
sname=e.getName();
rollno=e.getRollnumber();
email=e.getEmail();

 SendMail sm= new SendMail();

 sm.sendMail(email,companyname,date,venue);
System.out.println(email);
%>     

<tr>
    <td><%=rollno%></td>
    <td><%=sname%></td>
    <td><%=email%></td>
  </tr>
  
</tr>
<%
}
session2.close();
%>
</table>
</body>
</html>