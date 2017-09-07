<%-- 
    Document   : reply.jsp
    Created on : 2 Jun, 2017, 12:09:27 PM
    Author     : SaiDeva
--%>

<%@page import="javax.persistence.Id"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="msitplacement.Comments"%>
<%@ page import="java.util.*,org.hibernate.cfg.*" %>
<%! int id;int i;String Roll_number; String Subject;String Question;String Reply; Session session1 = null;%>
<% try{
//    String c= request.getParameter("id");
//if(c!=null)
//{ count=Integer.parseInt(c);//converting back into integer
//}
   i = Integer.parseInt(request.getParameter("id"));
}catch(NumberFormatException ex){ // handle your exception
   
}

//int username= (int)session.getAttribute("id");
       // System.out.println("username:- "+username);
 %>

<% System.out.println("dfghjk "+i);%>
<head>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link rel="stylesheet" href="css/comment.css">
    <style type="text/css">
      
        h1 
            {
                font: 400 40px/1.5 Helvetica, Verdana, sans-serif; 
                margin-left: 300px;              
                padding: 0; 
                float: center;
            }
       </style>
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

    <%
        
          
Configuration cf=new Configuration();
cf.configure();
SessionFactory sf = cf.buildSessionFactory();
session1 =sf.openSession();
//Using from Clause
//Studentcomments sc=(Studentcomments)it.next();
String SQL_QUERY ="from Comments where id =:cid";
Query query = session1.createQuery(SQL_QUERY);
query.setParameter("cid",i);
Iterator it=query.iterate();
while(it.hasNext())
{
Comments e=(Comments)it.next();

id=e.getId();
Roll_number=e.getRollnumber();
Subject =  e.getSub();
Question=e.getQuestion();

%>  
<div >
     <h1> View Comment</h1>
     <form ng-controller="FrmController" action="adminreply_servlet">
              
      <div class="main">
      <div class="one">
        <div class="register">
          <h3>Comment</h3>
          
            <input type="hidden" name="flag" value=<%=i%>>
              <div class="sub"> 
               <label for="jobd">Roll Number</label>
               <textarea name="rollno" readonly><%=Roll_number%></textarea>
            </div>
            
       
              <div class="sub"> 
               <label for="jobd">Subject</label>
              <textarea name="subject"readonly><%=Subject%></textarea>
            </div>
            
            <div class="des">
               <label for="jobd">Description</label>
              <textarea name="qst" readonly><%=Question%></textarea>
            </div>
            <div class="des">
               <label for="jobd">Reply</label>
              <textarea name="reply"></textarea>
            </div>
              <div>
<!--              <label for="venue">Venue</label>
              <input type="text" id="venue" name="venue" spellcheck="false" placeholder="Venue"/>-->
            </div>
           
               <button ng-click='btn_add();' style='margin-top:10px; margin-left: 200px; background: rgb(0,30,34);color:white'>Reply Comment</button>
               
    </form>
               
               <script type="text/javascript">
    function FrmController($scope) {
                $scope.comment = [];
                $scope.btn_add = function() {
                    if($scope.txtcomment !=''){
                    $scope.comment.push($scope.txtcomment);
                    }
                }

                $scope.remItem = function($index) {
                    $scope.comment.splice($index, 1);
                }
            }
</script>
</div>
   
<%
}
session1.close();
%>
</body>
</html>
