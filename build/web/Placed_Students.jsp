<%-- 
    Document   : Placed_Students
    Created on : Jun 5, 2017, 11:55:24 AM
    Author     : SaiDeva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Post job</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link rel="stylesheet" href="css/addpc.css">
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
   <div class="main">
      <div class="one">
        <div class="register">
          <h3>Placed Students</h3>
          <form id="reg-form" action="PlacedStudent_Servlet">
            <div>
              <label for="rollno">Roll Number</label>
              <input type="text" id="rollno" name="rollno" spellcheck="false" placeholder="Roll Number" required/>
            </div>
             <div>
              <label for="cname">Student Name</label>
              <input type="text" id="sname" name="sname" spellcheck="false" placeholder="Company Name" required/>
            </div>
          
              <div>
              <label for="cname">Company Name</label>
              <input type="text" id="cname" name="cname" spellcheck="false" placeholder="Company Name" required/>
            </div>
            
            <div>
              <label></label>
              <input type="submit" value="Submit" id="create-account" class="button"/>
            </div>
          </form>
          </div>
        </div>
      </div>
      
      
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/addpc.js"></script>
</body>
</html>