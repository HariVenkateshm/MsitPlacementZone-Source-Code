<%-- 
    Document   : Single_Student
    Created on : May 30, 2017, 11:27:35 AM
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
          <h3>Add Single Student</h3>
          <form id="reg-form" action="Add_Student_Servlet">
            <div>
              <label for="sname">Full Name</label>
              <input type="text" id="name" name="sname" spellcheck="false" placeholder="Full Name" required/>
            </div>
            
            <div>
              <label for="rollno">Roll Number</label>
              <input type="text" id="rollno" name="rollno" spellcheck="false" placeholder="Roll No" required/>
            </div>
<!--              <div>
              <label for="password">Password</label>
              <input type="password" id="password" name="password" spellcheck="false" placeholder="password" required/>
            </div>-->
               <div>
              <label for="password">gender</label>
              <input type="text" id="gender" name="gender" spellcheck="false" placeholder="gender" required/>
            </div>
             <div>
              <label for="email">Email</label>
              <input type="email" id="email" name="email" spellcheck="false" placeholder="email" required/>
            </div>
              <div>
              <label for="mastersp">Masters Percent</label>
              <input type="number" id="mastersp" name="mastersp" step="0.01" spellcheck="false" placeholder="" required/>
            </div>
              <div>
              <label for="btechp">Btech Percent</label>
              <input type="number" id="btechp" name="btechp" step="0.01" spellcheck="false" placeholder="" required/>
            </div>
              <div>
              <label for="interp">Inter Percent</label>
              <input type="number" id="interp" name="interp" step="0.01" spellcheck="false" placeholder="" required/>
            </div>
              <div>
              <label for="sscp">SSC Percent</label>
              <input type="number" id="sscp" name="sscp" step="0.01" spellcheck="false" placeholder="" required/>
            </div>
           <div>
              <label for="ygap">Year Gap</label>
              <input type="number" id="ygap" name="ygap" step="0.01" spellcheck="false" placeholder="" required/>
            </div>   
           <div>
              <label for="status">Status</label>
              <input type="text" id="status" name="status" spellcheck="false" placeholder="" required/>
            </div>   
           <div>
              <label for="status">Phone Number</label>
              <input type="number" id="phone" name="phone" spellcheck="false" placeholder="" required/>
            </div>   
              
            <div>
              <label></label>
              <input type="submit" value="Add Student" id="create-account" class="button"/>
            </div>
          </form>
          </div>
        </div>
      </div>
      
      
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/addpc.js"></script>
</body>
</html>
