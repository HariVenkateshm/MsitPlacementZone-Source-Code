<%-- 
    Document   : adminoperation
    Created on : May 31, 2017, 3:59:33 PM
    Author     : SaiDeva
--%>
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

 <div class="com" style="margin-left: 200px;">  
<h2 style="font-family:Arial, Helvetica, sans-serif;color: rgb(0,30,34)">Add PC</h2>
<div class="round-button">
    <a href="addpc.jsp">
        <img src="img/1.png" alt="Home" /></a>
</div>
 </div>

 <div class="com" style="margin-left: 200px;">  
<h2 style="font-family:Arial, Helvetica, sans-serif;color: rgb(0,30,34)">View Pc Details</h2>
<div class="round-button" >
    <a href="pc_details.jsp">
        <img src="img/img2.png" alt="Home" /></a>
</div>
</div>
    </body>
<style type="text/css">
.com{
    
    	height:250px;
    	width:300px;
    	float:left;
    	margin: 2px; 
    	
        
}
.round-button {
    width: 40%;
    height: 40%;
    padding-bottom: 10%;
    border-radius: 50%;
    border: 2px solid #f5f5f5;
    overflow: hidden;
    background: white;
    box-shadow: 0 0 3px gray;
}
.round-button:hover {
    background: white;
}
.round-button img {
    display: block;
    width: 76%;
    padding: 12%;
    height: auto;
}
</style>