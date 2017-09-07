<%-- 
    Document   : Students_Placed
    Created on : Jun 5, 2017, 4:27:33 PM
    Author     : SaiDeva
--%>

<html>
<head>
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
<%@ page import="java.util.*,msitplacement.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! String sname; String rollno;String companyname; Session session1; %>

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
    <h2 align="center">Selected List</h2>
<table id="interview">
  <tr>
      <th width="25%">Roll No</th>
    <th width="50%">Name</th>
    
    <th width="25%">Company Name</th>
<%
Configuration cf=new Configuration();
cf.configure();
SessionFactory sf = cf.buildSessionFactory();
session1 =sf.openSession();
//Using from Clause
String SQL_QUERY ="from Selectedlist";
Query query = session1.createQuery(SQL_QUERY);
//query.setParameter("s","selected");
Iterator it=query.iterate();
while(it.hasNext())
{
  Selectedlist as=(Selectedlist)it.next();
  sname=as.getStudentName();
  rollno=as.getRollnumber();
  companyname = as.getCompanyname();
  
%>                  
  <tr>
   
    <td><%=rollno%></td>
     <td><%=sname%></td>
    <td><%=companyname%></td>
  </tr>
  
</tr>
<%
}
session1.close();
%>
</table>
</body>
</html>