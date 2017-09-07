<%-- 
    Document   : Post_Company
    Created on : May 30, 2017, 3:41:39 AM
    Author     : SaiDeva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Post Company</title>
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
          <h3>Post Company</h3>
          <form id="reg-form" action="PostCompany_Servlet">
            <div>
              <label for="companyname">Company Name</label>
              <input type="text" id="name" name="cname" spellcheck="false" placeholder="Company Name" required/>
            </div>
            
            <div>
              <label for="jobd">Remarks</label>
              <textarea name="jobd" required></textarea>;
            </div>
              <div>
              <label for="about">About</label>
              <textarea name="about" required></textarea>;
            </div>
            
            <div>
              <label></label>
              <input type="submit" value="Post Company" id="create-account" class="button"/>
            </div>
          </form>
          </div>
        </div>
      </div>
      
      
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/addpc.js"></script>
</body>
</html>
