<%-- 
    Document   : addmentor
    Created on : May 28, 2017, 3:46:19 PM
    Author     : SaiDeva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
    
  <meta charset="UTF-8">
  <title>Add Mentor</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link rel="stylesheet" href="css/addmentor.css">
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
          <h3>ADD Mentor</h3>
          <form id="reg-form" action="Add_Mentor">
            <div>
              <label for="name">Name</label>
              <input type="text" id="name" name="name" spellcheck="false" placeholder="Name" required/>
            </div>
            <div>
              <label for="email">Email</label>
              <input type="email" id="email" name="email" spellcheck="false" placeholder="Email" required/>
            </div>
            
            <div>
              <label for="password">Password</label>
              <input type="password" id="password" name="password" placeholder="Password" required/>
            </div>
            
              <div>
              <label for="phoneno">Phone Number</label>
              <input type="number" id="phoneno" name="phoneno" placeholder="Phone Number" required/>
            </div>
            
            <div>
              <label></label>
              <input type="submit" value="ADD Mentor" id="create-account" class="button" required/>
            </div>
          </form>
          <!-- <div class="sep">
            <span class="or">OR</span>
          </div> -->
          <!-- <div class="connect">
            <div class="social-buttons facebook">
              <a href="#">
                <span>Facebook</span>
              </a>
            </div>
            <div class="social-buttons twitter">
              <a href="#">
                <span>Twitter</span>
              </a>
            </div> -->
          </div>
        </div>
      </div>
      
      
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/addmentor.js"></script>
</body>
</html>
