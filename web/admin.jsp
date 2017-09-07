<%-- 
    Document   : admin
    Created on : Jun 6, 2017, 8:36:18 AM
    Author     : SaiDeva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
     <%
        String username= (String)session.getAttribute("username");
        System.out.println("username:- "+username);
           if(username==null)
           {
               System.out.println("if condistion username:- "+username);
                response.sendRedirect("/index.jsp");
           }    
    %>  
<table  align ="center" >

<tr>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td align=center><img src="img/admin1.jpg" width=214  height=214>
</td></tr>
<br>
<br>
<tr>
<td align=center>

<h1><font color="#2271A0">
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Welcome to Administrator&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>

</h1>
</td>
</tr>

</table>

</body>
</html>































