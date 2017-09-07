<%-- 
    Document   : Filter_Student
    Created on : Jun 1, 2017, 11:39:45 AM
    Author     : SaiDeva
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
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
          <h3>Filter Students</h3>
          <form id="reg-form" action="filter_students.jsp">
            <div>
              <label for="mastersp">Masters Percentage</label>
              <input type="number" id="mastersp" name="mastersp" spellcheck="false" placeholder="Masters" required/>
            </div>
            
            <div>
              <label for="btechp">Btech Percentage</label>
              <input type="number" id="btechp" name="btechp" spellcheck="false" placeholder="Btech" required/>
            </div>
              <div>
              <label for="interp">Inter Percentage</label>
              <input type="number" id="interp" name="interp" spellcheck="false" placeholder="Inter" required/>
            </div>
            <div>
                <label for="sscp">SSC Percentage</label>
              <input type="number" id="sscp" name="sscp" placeholder="SSC" required/>
            </div>
           
            <div>
              <label></label>
              <input type="submit" value="Filter" id="create-account" class="button"/>
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
