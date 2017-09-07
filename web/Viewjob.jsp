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
<%! Date date;String companyname; String venue;String jobdescription; Session session1; %>

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
    <h2 align="center">INTERVIEW SCHEDULE</h2>
<table id="interview">
  <tr>
    <th width="25%">Date</th>
    <th width="50%">Company Name</th>
    <th width="50%">Venue</th>
    <th width="25%">Details</th>
<%
Configuration cf=new Configuration();
cf.configure();
SessionFactory sf = cf.buildSessionFactory();
session1 =sf.openSession();
//Using from Clause
String SQL_QUERY ="from Postjobs order by date(date)";
Query query = session1.createQuery(SQL_QUERY);
Iterator it=query.iterate();
while(it.hasNext())
{
Postjobs e=(Postjobs)it.next();
companyname=e.getCompanyname();
date=e.getDate();
venue=e.getVenue(); 
String n=e.getCompanyname();
   String str = "companydetails.jsp?id="+n;
%>                  
<tr>
    <td><%=date%></td>
    <td><%=companyname%></td>
    <td><%=venue%></td>
    <td><a href = <%=str%> >View</a></td>
  </tr>
  
</tr>
<%
}
session1.close();
%>
</table>
</body>
</html>