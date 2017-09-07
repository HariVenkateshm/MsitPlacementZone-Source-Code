<%-- 
    Document   : Student_Homepage
    Created on : Jun 3, 2017, 11:32:28 AM
    Author     : SaiDeva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "css/student.css" />
</head>
<body>
<p>
    <%
        String username= (String)session.getAttribute("username");
        
           if(username==null)
             response.sendRedirect("index.jsp");
           
            System.out.println("----------"+username);
            String n="comment.jsp?name="+username;
        %>  </p>
<div class="flex-container">
<header>
  <h1>MSIT Placement Zone</h1>
</header>
<nav class="nav">
<div class="row">

<div class="col-3 menu">
    
<ul>
    <li><a href="Viewjob.jsp" target="f1">Interview Schedule</a></li>
</ul>
<ul>

<ul>
<li><a href="Students_Placed.jsp" target="f1">Selected List</a></li>
</ul>
<ul>
<ul>
<li><a href="resourse.html" target="f1">Resource</a></li>
</ul>
    <ul>
<li><a href=<%=n%> target="f1">Post Queries</a></li>
</ul>
    <ul>
<li><a href="viewreply.jsp" target="f1">View Replies</a></li>
</ul>
    <ul>
     <li><a href="changepassword.jsp" target="f1">Change Password</a></li>
    </ul>
<ul>
    <li><a href="logoutservlet">Logout</a></li>
</ul>
</div>
</div>
</nav>


<article class="article">
 <iframe  name="f1" width="1050" height="447" border="0" src="Viewjob.jsp">
          </iframe>


</div>
<footer>Copyright &copy; MsitPlacement.com</footer>
</body>
</html>
