<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>E Learning</title>
      <!-- owl carousel style -->
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.carousel.min.css" />
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <link href="css/login-register.css" rel="stylesheet" />
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,700&display=swap" rel="stylesheet">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">

      
	<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style.css"> <!-- Resource style -->
	<link rel="stylesheet" href="css/demo.css"> <!-- Demo style -->


   </head>
   <body>
      <!--header section start -->
      <div class="header_section">
         <div class="header_bg">
            <div class="container">
               <nav class="navbar navbar-expand-lg navbar-light bg-light">
                  <a class="logo" href="index.html"><img src="images/main-logo.png"></a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                           <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item active ">
                           <a class="nav-link" href="getAllCourses">courses</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="about.html">About</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="contact.html">Contact Us</a>
                        </li>
                        
                           <li class="cd-main-nav__list js-signin-modal-trigger" style="float:left;">
                              Welcome Admin
                           </li>
                       
                     </ul>
                  </div>
               </nav>
            </div>
         </div>
         



<!--login model-->
<div class="modal fade login" id="loginModal" data-backdrop="false">
   <div class="modal-dialog login animated">
     <div class="modal-content">
        <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
           </div>
           <div class="modal-body">
               <div class="box">
                    <div class="content">
                       <div class="error"></div>
                       <div class="form loginBox">
                         <form method="" action="getUser" accept-charset="UTF-8">
                             <center> <h2 class="division-title">LOGIN</h2></center>
                                 <div class="form-group">
                                   <label for="email">username</label>
                                   <input id="email" class="form-control" type="text" placeholder="username" name="email">
                                 </div>
                                 <div class="form-group">
                                   <label for="pasw">Password</label>
                                   <input type="password" class="form-control" id="pasw"  placeholder="Password" name="pasw">
                                 </div>
                                 <input class="btn btn-default btn-login" type="submit" value="Login" >
                         </form>
                     </div>
                    </div>
               </div>
               <div class="box">
                 <div class="content registerBox" style="display:none;">
                  <div class="form">
                   <center> <h2 class="division-title">Register</h2></center>
                     <form method="" html="{:multipart=>true}" data-remote="true" action="addUser" accept-charset="UTF-8">
                     <div class="form-group">
                       <label for="uname">Enter user Name</label>   
                      <input id="uname" class="form-control" type="text" placeholder="username" name="uname" ></div>
                     <div class="form-group">
                     <label for="email">Email ID</label>
                     <input id="remail" class="form-control" type="text" placeholder="Email" name="email"></div>
                     <div class="form-group">
                     <label for="pasw">Password</label>
                     <input id="password" class="form-control" type="password" placeholder="Password" name="pasw"></div>
                     <div class="form-group">
                         <label for="cnfpasw">Confirm Password</label>
                     <input id="cpassword" class="form-control" type="password" placeholder="Repeat Password" name="cnfpasw"></div>
                     <input class="btn btn-default btn-register" type="submit" value="Create account" > 
                     </form>
                     </div>
                 </div>
             </div>
           <div class="modal-footer">
               <div class="forgot login-footer">
                   <span>Looking to
                        <a href="javascript: showRegisterForm();">create an account</a>
                   ?</span>
               </div>
               <div class="forgot register-footer" style="display:none">
                    <span>Already have an account?</span>
                    <a href="javascript: showLoginForm();">Login</a>
               </div>
           </div>
     </div>
   </div>
 </div>
</div>










     
            </div>
      <!--header section end -->
      <!-- services section start -->
     <div class="services_section layout_padding">
         <div class="container">
            <h1 class="services_taital"><span style="color: #fcce2d">Our</span> Courses</h1>
            <div class="services_section_2">
            
             <c:forEach items="${list}" var="course">
             
                 <div class="card" style="width: 18rem;">
					  <img class="card-img-top" src="..." alt="Card image cap">
					  <div class="card-body">
						    <h5 class="card-title">${course.cname}</h5>
						    <p class="card-text">${course.cdescription}</p>
	                       <!--  <a href="updateCourse/${course.getCid()}" role="button" class="btn btn-primary" type="submit">update</a> -->
	                        <a href="updateCourse?cid=${course.getCid()}">Update</a>
	                        <a href="deleteCourse/${course.getCid()}" role="button" class="btn btn-danger" >delete</a> 
    
                       </div>
                  </div>
              </c:forEach>
                  
              
               
               
                  <div class="col-md-6">
                     <div class="image_main">
                        <div class="text_main">
                           <div class="cd-main-nav__list js-signin-modal-trigger"><a class="cd-main-nav__item cd-main-nav__item--signin"  href="course_form.jsp">Add new Course</a> </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>            
      </div>
      <!-- services section end -->

      <!-- footer section start -->
      <div class="footer_section layout_padding">
         <div class="container">
            <div class="footer_section_2">
               <div class="row">
                  <div class="col-lg-3 margin_top">
                     <div class="call_text"><a href="#"><img src="images/call-icon1.png"><span class="padding_left_15">Call Now +01 9876543210</span></a></div>
                     <div class="call_text"><a href="#"><img src="images/mail-icon1.png"><span class="padding_left_15">elearning@gmail.com</span></a></div>
                  </div>
                  <div class="col-lg-3">
                     <div class="information_main">
                        <h4 class="information_text">Information</h4>
                        <p class="many_text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration</p>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <div class="information_main">
                        <h4 class="information_text">Helpful Links</h4>
                        <div class="footer_menu">
                           <ul>
                              <li><a href="index.html">Home</a></li>
                              <li><a href="about.html">About</a></li>
                              <li><a href="services.html">Services</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3">
                     <div class="information_main">
                        <div class="footer_logo"><a href="index.html"><img src="images/"></a></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- footer section end -->
      <!-- copyright section start -->
      <div class="copyright_section">
         <div class="container">
            <p class="copyright_text">� 2020 All Rights Reserved. <a href="https://html.design">Free html  Templates</a></p>
         </div>
      </div>
      <!-- copyright section end -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <!-- javascript --> 
      <script src="js/owl.carousel.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script src="js/login-register.js" type="text/javascript"></script>
   </body>
</html>

