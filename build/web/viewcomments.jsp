<%-- 
    Document   : viewcomments
    Created on : 25 May, 2017, 10:24:50 AM
    Author     : J Anusha
--%>

<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="msitplacement.Comments"%>
<%@ page import="java.util.*,org.hibernate.cfg.*" %>
<<%! int Id; int n; String Roll_number; String Subject;String Question;String Reply; Session session1 = null; %>
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
<table id="interview">
    <tr><th name="ïd">ID</th><th>Roll_number</th><th>Subject</th><th>Question</th><th>Reply</th></tr>                     
<%
Configuration cf=new Configuration();
cf.configure();
HttpSession session4 = request.getSession();
SessionFactory sf = cf.buildSessionFactory();
session1 =sf.openSession();
//Using from Clause
String SQL_QUERY ="from Comments";
Query query = session1.createQuery(SQL_QUERY);
Iterator it=query.iterate();

while(it.hasNext())
{
Comments e=(Comments)it.next();
Id=e.getId();
Roll_number=e.getRollnumber();
Subject =  e.getSub();
Question=e.getQuestion();
 n=e.getId();
 
    //session4.setAttribute("id", Id);
    String str = "reply.jsp?id="+Id;
%>  
<tr>
<td><%=Id%></td>
<td><%=Roll_number%></td>
<td><%=Subject%></td>
<td><%=Question%></td>

<td><a href = <%=str%> >Reply</a></td>
</tr>
<%
}
session1.close();
%>
</table>
</body>
</html>