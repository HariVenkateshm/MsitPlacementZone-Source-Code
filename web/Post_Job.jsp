<%-- 
    Document   : Post_Job
    Created on : May 30, 2017, 2:41:54 AM
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
          <h3>Post Job</h3>
          <form id="reg-form" action="PostJob_Servlet">
            <div>
              <label for="cname">Company Name</label>
              <input type="text" id="name" name="cname" spellcheck="false" placeholder="Company Name" required/>
            </div>
            
            <div>
              <label for="date">Date</label>
              <input type="date" id="rollno" name="date" spellcheck="false" placeholder="Date" required />
            </div>
              <div>
              <label for="venue">Venue</label>
              <input type="text" id="venue" name="venue" spellcheck="false" placeholder="Venue" required/>
            </div>
            
            <div>
              <label></label>
              <input type="submit" value="Post job" id="create-account" class="button"/>
            </div>
          </form>
          </div>
        </div>
      </div>
      
      
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/addpc.js"></script>
</body>
</html>
