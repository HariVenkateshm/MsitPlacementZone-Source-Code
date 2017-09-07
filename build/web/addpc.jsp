<%-- 
    Document   : addpc
    Created on : May 28, 2017, 3:46:46 PM
    Author     : SaiDeva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>ADD PC</title>
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
          <h3>ADD PC</h3>
          <form id="reg-form" action="Add_Pc">
            <div>
              <label for="name">Name</label>
              <input type="text" id="name" name="pcname" spellcheck="false" placeholder="Name" required/>
            </div>
            
            <div>
              <label for="rollno">Roll Number</label>
              <input type="text" id="rollno" name="rollno" spellcheck="false" placeholder="Roll Number" required/>
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
              <label for="year">Phone Number</label>
              <input type="text" id="password-again" name="phoneno" placeholder="Phone Number" />
            </div>
            <div>
              <label></label>
              <input type="submit" value="ADD PC" id="create-account" class="button"/>
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

    <script src="js/addpc.js"></script>
</body>
</html>
