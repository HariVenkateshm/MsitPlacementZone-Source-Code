<%-- 
    Document   : viewcompany
    Created on : May 22, 2017, 12:06:38 PM
    Author     : SaiDeva
--%>


<%@ page import="java.util.*,msitplacement.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! Date date; String companyname;  String   projectname;String aboutcompany; Session session1 = null; %>
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
    <h1>${message1}</h1>
<table width="300" border="1">
<tr><th style="background: rgb(0,30,34);color: white">Company Name</th><th>Project Name</th><th>About Company</th></tr>                     
<%
Configuration cf=new Configuration();
cf.configure();
SessionFactory sf = cf.buildSessionFactory();
session1 =sf.openSession();
//Using from Clause
String SQL_QUERY ="from postcompany";
Query query = session1.createQuery(SQL_QUERY);
Iterator it=query.iterate();

while(it.hasNext())
{
    Postcompany e= (Postcompany)it.next();
    companyname=e.getCompanyname();
    //projectname =  e.getJobdesc();
    //aboutcompany=e.getCompanydetails();
%>                  
<tr>
<td><%=companyname%></td>
<td><%=projectname%></td>
<td><%=aboutcompany%></td>
</tr>
<%
}
session1.close();
%>
</table>
</body>
</html>