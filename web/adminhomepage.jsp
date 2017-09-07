<%-- 
    Document   : adminhomepage
    Created on : May 24, 2017, 7:21:56 PM
    Author     : SaiDeva
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/mentor.css">
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
<header>
    <h1 class="header">MSIT Placement Zone</h1>
    <!--    <div class="dropdown2" style="float:right;">
      <button class="dropbtn2">Right</button>
      <div class="dropdown-content2">
       <a href="registratonform.html" target="f1">Single Entry</a>
        <a href="addstudents.html" target="f1">Multiple Entry</a>
        <a href="addstudents.html" target="f1">View Students</a>
      </div>
    </div>-->

</header>
<div class="flex-container">
<nav class="nav">
<div class="row">

<div class="col-3 menu">
<ul>
<li><a href="adminoperation.jsp" target="f1">Home</a></li>

  <div class="dropdown">
  <li>
  <a class="dropbtn">Students </a>
  <div class="dropdown-content">
    <a href="Single_Student.jsp" target="f1">Single Entry</a>
    <a href="addstudents.html" target="f1">Multiple Entry</a>
    <a href="student_details.jsp" target="f1">View Students</a>
  </div>
</div>

<div class="dropdown">
  <li><a href="Post_Job.jsp" target="f1" class="dropbtn">Post Job</a>
   <div class="dropdown-content">
       <a href="postjob_details.jsp" target="f1">View Jobs</a></div></li></div>
<div class="dropdown">       
    <li><a href="Post_Company.jsp" target="f1">Post Company</a>
    <div class="dropdown-content">
       <a href="postcompany_details.jsp" target="f1">View Companies</a></div></li></div>
  <li><a href="resourse.html" target="f1">Resources</a></li>
  <li><a href="Check_Eligibility.jsp" target="f1">Filter Students</a></li>
  <li><a href="Placed_Students.jsp" target="f1">Placed Students</a></li>
  <li><a href="viewcomments.jsp" target="f1">View Comments</a></li>
  <li><a href="changepassword.jsp" target="f1">Change Password</a></li>
  <li><a href="logoutservlet">Logout</a></li>

</ul>
</div>
</div>
</nav>

<article class="article">
 <iframe  name="f1" width="1140" height="550" border="0" src="adminoperation.jsp">
          </iframe>
</div>
<footer>Copyright &copy; MsitPlacement.com</footer>
</body>
</html>
