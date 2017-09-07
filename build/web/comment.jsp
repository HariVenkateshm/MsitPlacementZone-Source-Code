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
      <link rel="stylesheet" href="css/comment.css">
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
          <h3>Comment</h3>
          <form id="reg-form" action="comments_servlet">
              <div class="sub">
               <label for="jobd">Subject</label>
              <textarea name="subject"></textarea>
            </div>
            
            <div class="des">
               <label for="jobd">Description</label>
              <textarea name="qst"></textarea>
            </div>
              <div>
<!--              <label for="venue">Venue</label>
              <input type="text" id="venue" name="venue" spellcheck="false" placeholder="Venue"/>-->
            </div>
            
            <div>
              <label></label>
              <input type="submit" value="Comment" id="create-account" class="button"/>
            </div>
          </form>
          </div>
        </div>
      </div>
      
      
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>
</html>
