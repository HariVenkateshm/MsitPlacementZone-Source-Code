<%-- 
    Document   : index
    Created on : May 26, 2017, 12:57:51 PM
    Author     : SaiDeva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width" />
      <title>Msit Placement</title>
      <link rel="stylesheet" href="css/components.css">
      <link rel="stylesheet" href="css/responsee.css">
      <link rel="stylesheet" href="css/company_style.css">
      <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="owl-carousel/owl.theme.css">
      <!-- CUSTOM STYLE -->  
      <link rel="stylesheet" href="css/template-style.css">
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="js/jquery-ui.min.js"></script>  
      <script type="text/javascript" src="js/modernizr.js"></script>
      <script type="text/javascript" src="js/responsee.js"></script>   
      <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script> 
      <script type="text/javascript" src="owl-carousel/owl.carousel.min.js"></script>
<!--      <script type="text/javascript"> 
          function togglePopUp(){
              var value = document.getElementById('id02').style.display;
              if(document.getElementById('id02').style.display == "block")
                  document.getElementById('id02').style.display='none';
          }
      </script>-->
   </head>
   <body class="size-1140" ng-controller="MainCtrl">
      <!-- TOP NAV WITH LOGO -->
      
         
            <div class="line">
                <h2 style="margin-top: 40px;margin-left: 350px;font-size: 50px;font-weight:bolder;color:white">MSIT Placement Zone</h2>
               <div class="top-nav">              
                              
                  <p class="nav-text">Custom menu text</p>
                 
                  <div class="top-nav s-12 l-5">
                     <ul class="top-ul chevron">
                        
                        
                         
<div id="id01" class="modal">
  
    <form class="modal-content animate" action="loginservlet" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <h2>Login</h2>
    </div>
    
    <div class="container">
    
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" ng-model="username" ng-value="myVar" required>
        <br>
      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" ng-model="password" ng-value="myPass" required>
        <br>
      <button type="submit">Login</button>
     <!--  <button type="submit">Forgot Password</button> -->
         </div>
          </form>

    </div>
<!--    <button class ="frp" type="submit" onclick="ForgetPassword">Forget password?</button>-->
</div>
<!--<div id="id06" class="modal">
  
    <form class="modal-content animate" action="ForgetPassword" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id06').style.display='none'" class="close" title="Close Modal">&times;</span>
      <h2>Login</h2>
    </div>
    
    <div class="container">
    
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" ng-model="username" ng-value="myVar" required>
        <br>
      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" ng-model="password" ng-value="myPass" required>
        <br>
      <button type="submit">Login</button>
       <button type="submit">Forgot Password</button> 
     <button class ="frp" type="submit">Send Password</button>
    </div>
    </div>
  </form>
</div>-->

<div id="id02" class="modal">
 
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>
    
    <div class="container">
  This Project mainly helps placement coordinator and students in MSIT to maintain credit records and company details.

    </div>
    </div>
  </form>
</div>

<div id="id03" class="modal">
  
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>
    
    <div class="container">

    <table>
    <thead>
        <tr>

            <td class="year">Year</td>
            <td class="name">CompanyName</td>
            <td class="posts">Selected Studets</td>
         
        </tr>
    <tbody>
        <tr>
            <td class="year">2016</td>
            <td class="name">TCS</td>
            <td class="posts">10</td>
         
        </tr>
        <tr>
            <td class="year">2015</td>
            <td class="name">JPMC</td>
            <td class="posts">9</td>
           
        </tr>
        <tr>
            <td class="year">2014</td>
            <td class="name">Graminor</td>
            <td class="posts">8</td>
           
        </tr>
        <tr>
            <td class="year">2013</td>
            <td class="name">Cognizant</td>
            <td class="posts">7</td>
        </tr>
        <tr>
            <td class="year">2012</td>
            <td class="name">Infosys</td>
            <td class="posts">6</td>
        </tr>
</table>
    
    </div>
    </div>
  </form>
</div>

<div id="id05\4" class="modal">
  
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id05').style.display='none'" class="close" title="Close Modal">&times;</span>
      <h2> Contact us</h2>
    </div>
    
    <div class="container">
    <h3> Pc coordinator Name :</h3>
    <h3> Contact No: </h3>
    <h3> Email id:
      
    </div>
    </div>
  </form>
</div>

<div id="id05" class="modal">
  
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id05').style.display='none'" class="close" title="Close Modal">&times;</span>
      <h2> Contact us</h2>
    </div>
    
    <div class="container">
    <h3> Pc coordinator Name :</h3>
    <h3> Contact No: </h3>
    <h3> Email id:
      
    </div>
    </div>
  </form>
</div>
                        </li>
                     </ul> 
                  </div>
               </div>
            </div>
         
      
      <section>
      <!-- FIRST BLOCK -->  
         <div id="first-block">
            <div class="line">
               <div> 
                <label>${loginstatus}</label></div>
               <br><br>
               <div class="margin">
                  <div class="s-12 m-6 l-3 margin-bottom">
                      <i class="icon-paperplane_ico icon2x" onclick="document.getElementById('id02').style.display='block'"></i>
                    <button class="about" onclick="document.getElementById('id02').style.display='block'" style="width:auto;">ABOUT</button>

                  </div>
                  <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-star icon2x" onclick="document.getElementById('id03').style.display='block'"></i>
                     <button class="about" onclick="document.getElementById('id03').style.display='block'" style="width:auto;">COMPANY</button>
                  </div>
                   <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-mail icon2x" onclick="document.getElementById('id05').style.display='block'"></i>
                     <button class="about" onclick="document.getElementById('id05').style.display='block'" style="width:auto;">CONTACT</button>

                  </div>
                  <div class="s-12 m-6 l-3 margin-bottom">
                     <i class="icon-message icon2x" onclick="document.getElementById('id01').style.display='block'"></i>
                     <button class="about" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">LOGIN</button>

                  </div>
                  
               </div>
            </div>
         </div>
         <div id="fourth-block">
            <div class="line">
               <div id="owl-demo2" class="   owl-theme">
                  <div class="item">
                  <br>
                     <h2>MSIT</h2>
                     <br>
                     <p class="s-12 m-12 l-8 center">MSIT (MS in IT or Master of Science in Information Technology) is a two year post graduate program in Computer Science started in 2001. MSIT is an innovative multi-university interdisciplinary post-graduate program.
                     </p>
                  </div>
                  <div class="item">
                  <br>
                     <h2>Learning by Doing</h2>
                     <br>
                     <p class="s-12 m-12 l-8 center">The methodology of “Learning By Doing” is a novel concept which is a unique methodology being adopted by MSIT.
                     </p>
                  </div>
                  <div class="item">
                  <br>
                     <h2>Visited Companies to MSIT</h2>
                     <br>
                     <p class="s-12 m-12 l-8 center"> 
                     APIGEE, American Express, Gramener,Innominds,MAQ,Nendrasys,MuSigma,XtremeIT,Sigmoid Analytics,Sales Force, TCS, JP Morgan, Capgemini, ZOHO, AGS, CA, Amazon, IdeaBytes, Teradata, Viven Infomedia, Grit Innovations, Value Momentum, GE Health care, Mebelkart, NVIDIA, VMWare , Saven Technologies, Magnitude, IBM ISL, Mathworks, Cyient, Spectraforce, Whitespace. 

                     </p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- FOOTER -->   
      <footer>
         <div class="line">
            <div class="s-12 l-6">
               <p>MSIT Copyright
               </p>
            </div>
            <div class="s-12 l-6">
               <p class="right">
                  <a class="right" href="http://www.myresponsee.com" title="Responsee - lightweight responsive framework">F T G</a>
               </p>
            </div>
         </div>
      </footer>
      <script type="text/javascript">
         jQuery(document).ready(function($) {  
           $("#owl-demo").owlCarousel({
          slideSpeed : 300,
          autoPlay : true,
          navigation : false,
          pagination : false,
          singleItem:true
           });
           $("#owl-demo2").owlCarousel({
          slideSpeed : 300,
          autoPlay : true,
          navigation : false,
          pagination : true,
          singleItem:true
           });
         });
        </script>  
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
   </body>
</html>