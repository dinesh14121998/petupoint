<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.8.5, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.5, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="asset/images/logo-122x87.png" type="image/x-icon">
  <meta name="description" content="">
  <title>Create An ACCOUNT</title>
  <link rel="stylesheet" href="asset/web/asset/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="asset/tether/tether.min.css">
  <link rel="stylesheet" href="asset/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="asset/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="asset/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="asset/dropdown/css/style.css">
  <link rel="stylesheet" href="asset/animatecss/animate.min.css">
  <link rel="stylesheet" href="asset/theme/css/style.css">
  <link rel="stylesheet" href="asset/mobirise/css/mbr-additional.css" type="text/css">
  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
</head>
<body>
  <section class="menu cid-r6Zcs0SZYM" once="menu" id="menu1-s">

    

    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="https://mobirise.co">
                         <img src="asset/images/logo-122x87.png" alt="Mobirise" title="" style="height: 6.4rem;">
                    </a>
                </span>
                
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true"><li class="nav-item">
                    <a class="nav-link link text-white display-4" href="https://mobirise.co">
                        </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-white display-4" href="index.jsp"><span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>
                        HOME &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
                </li><li class="nav-item"><a class="nav-link link text-white display-4" href=""><span class="mbri-sites mbr-iconfont mbr-iconfont-btn"></span>CRETE AN ACCOUNT &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a></li><li class="nav-item"><a class="nav-link link text-white display-4" href="https://mobirise.co">
                        </a></li></ul>
            
        </div>
    </nav>
</section>

<section class="engine"><a href="https://mobirise.info/h">how to create a web page</a></section><section class="cid-r6Zcstix7c mbr-parallax-background" id="header15-t">

    

    <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(0, 0, 0);"></div>

    <div class="container align-right">
<div class="row">
    <div class="mbr-white col-lg-8 col-md-7 content-container">
        <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-2">
            Petu poinT.com</h1>
        <p class="mbr-text pb-3 mbr-fonts-style display-5">Hello Dear USER , <br>We Welcome you to our A Whole world<br>of tasty and healthy Food<br>We promise you to fully satisfy with our<br>foods and Services.&nbsp;<br><br></p>
    </div>
    <div class="col-lg-4 col-md-5">
    <div class="form-container">
        <div class="media-container-column" data-form-type="formoid">
            <div data-form-alert="" hidden="" class="align-center">
                Thanks for filling out the form!
            </div>
            <form class="mbr-form" action="AddUser" method="post" >
                <div data-for="name">
                    <div class="form-group">
                        <input type="text" class="form-control px-3" name="name"  placeholder="Name" required="">
                    <c:if test="${not empty errorMap}">
	
			<c:forEach items="${errorMap.name}" var="errors">
				<h1 class="alert alert-danger">${errors}</h1>
			</c:forEach>
				
		</c:if>
		
                    
                    </div>
                </div>
                <div data-for="password">
                    <div class="form-group">
                        <input type="password" class="form-control px-3" name="password"  placeholder="Password" required="" id="email-header15-t">
                    
                    <c:if test="${not empty errorMap}">
	
			<c:forEach items="${errorMap.password}" var="errors">
				<h1 class="alert alert-danger">${errors}</h1>
			</c:forEach>
			</c:if>
                    
                    </div>
                </div>
                <div data-for="password">
                    <div class="form-group">
                        <input type="password" class="form-control px-3" name="Cpassword"  placeholder="Confirm Password" id="phone-header15-t">
                   
                   <c:if test="${not empty errorMap}">
	
			<c:forEach items="${errorMap.cpassword}" var="errors">
				<h1 class="alert alert-danger">${errors}</h1>
			</c:forEach>
			</c:if>
                    </div>
                </div>
				 <div data-for="email">
                    <div class="form-group">
                        <input type="email" class="form-control px-3" name="email" placeholder="Email" id="phone-header15-t">
                    
                    <c:if test="${not empty errorMap}">
	
			<c:forEach items="${errorMap.email}" var="errors">
				<h1 class="alert alert-danger">${errors}</h1>
			</c:forEach>
			</c:if>
                    </div>
                </div>
				 <div data-for="phone">
                    <div class="form-group">
                        <input type="tel" class="form-control px-3" name="phone" data-form-field="Phone" placeholder="Phone" id="phone-header15-t">
                   
                   <c:if test="${not empty errorMap}">
	
			<c:forEach items="${errorMap.phone}" var="errors">
				<h1 class="alert alert-danger">${errors}</h1>
			</c:forEach>
				
		</c:if>
                   
                    </div>
                </div>
                
                <span class="input-group-btn"><button href="" type="submit" class="btn btn-form btn-secondary display-4">SUMBIT</button></span>
            </form>
        </div>
    </div>
    </div>
</div>
    </div>
    
</section>


  <script src="asset/web/asset/jquery/jquery.min.js"></script>
  <script src="asset/popper/popper.min.js"></script>
  <script src="asset/tether/tether.min.js"></script>
  <script src="asset/bootstrap/js/bootstrap.min.js"></script>
  <script src="asset/smoothscroll/smooth-scroll.js"></script>
  <script src="asset/dropdown/js/script.min.js"></script>
  <script src="asset/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="asset/viewportchecker/jquery.viewportchecker.js"></script>
  <script src="asset/parallax/jarallax.min.js"></script>
  <script src="asset/theme/js/script.js"></script>
  <script src="asset/formoid/formoid.min.js"></script>
  
  
 <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i></i></a></div>
    <input name="animation" type="hidden">
  </body>
</html>