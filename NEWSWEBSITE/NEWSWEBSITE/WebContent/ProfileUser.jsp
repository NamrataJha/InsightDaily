<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Driver" %>
  
    
     
    <%
    String breaknews[][]= new String[7][7];
    int s=0;
    try
    {
   		 Class.forName("com.mysql.jdbc.Driver").newInstance();
    	 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/insightdaily","root","myproject");
    	 Statement stmt=conn.createStatement();
    	 String query="SELECT News_ID,Headline,News_Type,Date,Time,video,image FROM news ORDER BY Priority desc,Date desc,Time desc;";
    	 ResultSet rs= stmt.executeQuery(query);
    	 for(int i=0;i<7;i++)
    	 {
    		 if(rs.next())
    		 {
    			 breaknews[i][0]=""+rs.getInt(1);
    			 breaknews[i][1]=rs.getString(2);
    			 breaknews[i][2]=rs.getString(3);
    			 breaknews[i][3]=""+rs.getDate(4);
    			 breaknews[i][4]=""+rs.getTime(5);
    			 breaknews[i][5]=rs.getString(6);
    			 breaknews[i][6]=rs.getString(7);
    		 }
    	 }
    	 //s=Integer.parseInt(breaknews[0][0]);
    
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    finally
    {
    	
    }
   
   
   
    %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>INSIGHT DAILY</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div> </div>
            <div> </div>
            <div> </div>
            <div></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Top Header Area -->
        <div class="top-header-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 col-md-6">
                        <!-- Breaking News Widget -->
                        <div class="breaking-news-area d-flex align-items-center">
                            <div class="news-title">
                                <p>Breaking News:</p>
                            </div>
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="<%= breaknews[0][0] %>"><%= breaknews[0][1] %></a></li>
                                    <li><a href="<%= breaknews[1][0] %>"><%= breaknews[1][1] %></a></li>
                                    <li><a href="<%= breaknews[2][0] %>"><%= breaknews[2][1] %></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="top-meta-data d-flex align-items-center justify-content-end">
                            <!-- Top Social Info -->
                            <div class="top-social-info">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                            <!-- Top Search Area -->
                            <div class="top-search-area">
                                <form action="Home.jsp" method="post">
                                    <input type="search" name="top-search" id="topSearch" placeholder="Search...">
                                    <button type="submit" class="btn"><i class="fa fa-search" aria-hidden="true"></i></button>
                                </form>
                            </div>
                            <% String link="login.jsp";
                            if(session.getAttribute("login")!=null) 
                            {
                            	link="register.jsp";
                            }%>
                            <!-- Login -->
                           <a href="loginas.jsp" class="login-btn"><i class="fa fa-user" aria-hidden="true">

                            </i></a>
                            
                            <% String val="login";
                            if(session.getAttribute("login")!=null)
                            {
                            		val="hello "+(String)session.getAttribute("login");} 
                            		%> <%= val %>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="vizew-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">

                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="vizewNav">

                        <!-- Nav brand -->
                        <a href="Home.jsp" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li class="active"><a href="Home.jsp">Home</a></li>
                                    <li><a href="archive-list.html">Archives</a></li>
                                    <li><a href="#">CATEGORIES</a>
                                        <ul class="dropdown">
                                                <li><a href="archive-list.html">- Political</a></li>
                                                <li><a href="archive-grid.html">- General</a></li>
                                                <li><a href="single-post.html">- Entertainment</a></li>
                                                <li><a href="video-post.html">- Education</a></li>
                                                <li><a href="contact.html">- Sports</a></li>
                                        </ul>
                                    </li>
                                   
                                            <li><a href="#">Discover</a>
                                        <div class="megamenu">
                                            <ul class="dropdown">
                                                <li><a href="archive-list.html">- Blogs</a></li>
                                                <li><a href="archive-grid.html">- Debates and Polls</a></li>
                                            </ul>
                                           
                                        </div>
                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
    
        <!-- ##### Breadcrumb Area Start ##### -->
    <div class="vizew-breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Login</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Profile Area Start ##### -->
 
    <!-- ##### Trending Posts Area Start ##### -->
    <section class="trending-posts-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h4>WELCOME!</h4>
                        <div class="line"></div>
                    </div>
                </div>
            </div>


            <div class="row">
                

                <!-- Single Blog Post -->
                <div class="col-12 col-md-4">
                    <div class="single-post-area mb-80">
                        <!-- Post Thumbnail -->
                        
						<div class="post-content"></div>
                        <!-- Post Content -->
                        <div class="post-content">
                            
                            <a href="login.jsp?value=Journalist" class="post-title" style="text-align: center">BOOKMARKS</a>
                            
                        </div>
                        <div class="col-12 col-md-5 col-lg-12">
                        	<iframe src="bookprofile.jsp" width="350" height="500" scrolling="auto" style="border:none;">
                        		
                        	</iframe>
                        	<button type="submit" name="btnlog" class="btn vizew-btn w-100 mt-30">Explore</button>
                  
                  
                </div>
                    </div>
                </div>

                <!-- Single Blog Post -->
                <!-- Single Blog Post -->
                <div class="col-12 col-md-4">
                    <div class="single-post-area mb-80">
                     <!-- Post Content -->
                        <div class="post-content">
                           
                            <a href="login.jsp?value=Reader" class="post-title" style="text-align: center">HELLO READER</a>
                            
                        </div>
                        <!-- Post Thumbnail -->
                        <div class="post-thumbnail" >
                            <img src="img/userlogin.png" alt="" style="display: block; margin-left: auto; margin-right: auto; width=50%;">

                           
                        </div>
                        <div class="post-content">
                        <a href="#"><p class="post-content" style="text-align:center; color:gray;">change profile picture</p></a>
                        <p class="post-content" style="text-align:center; color:white;">n@gmail.com</p>
                           <table>
                           <tr>
                           <td><a href="ChangePassword.jsp?type=username"><button class="btn vizew-btn mt-30" type="submit">Change Username</button></a></td>
                           <td><a href="ChangePassword.jsp?type=password"><button class="btn vizew-btn mt-30" type="submit">Change password</button></a></td>
                           </tr>
                           </table>
                            
                            

                        </div>

                       
                    </div>
                </div>
                <!-- Single Blog Post -->
                <div class="col-12 col-md-4">
                    <div class="single-post-area mb-80">
                        <!-- Post Thumbnail -->
                        
						<div class="post-content"></div>
                        <!-- Post Content -->
                        <div class="post-content">
                            
                            <a href="login.jsp?value=Journalist" class="post-title" style="text-align: center">BLOGS</a>
                            
                        </div>
                        <div class="col-12 col-md-5 col-lg-12">
                        	<iframe src="blogprofile.jsp" width="350" height="500" scrolling="auto" style="border: none;">
                        		
                        	</iframe>
                        	<button type="submit" name="btnlog" class="btn vizew-btn w-100 mt-30">Write more</button>
                  
                </div>
                        
                    </div>
                </div>

                        <form action="index.html" method="post">
                            <div class="form-group">
                                
                            </div>
                            <div class="form-group">
                                
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    </div>
                            </div>
                             </form>
                             <form action="index.html" method="post">
                            <div class="form-group">
                                
                            </div>
                            <div class="form-group">
                                
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    </div>
                            </div>
                             </form>
                             
        </div>
    </section>
    <!-- ##### Trending Posts Area End ##### -->
   
   
    <!-- ##### Profile Area End ##### -->
    

    
    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="footer-widget mb-70">
                        <!-- Logo -->
                        <a href="index.html" class="foo-logo d-block mb-4"><img src="img/core-img/logo2.png" alt=""></a>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna</p>
                        <!-- Footer Newsletter Area -->
                        <div class="footer-nl-area">
                            <form action="#" method="post">
                                <input type="email" name="nl-email" class="form-control" id="nlEmail" placeholder="Your email">
                                <button type="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="footer-widget mb-70">
                        <h6 class="widget-title">Latest Twister</h6>
                        <!-- Twitter Slides -->
                        <div class="twitter-slides owl-carousel">

                            <!-- Single Twitter Slide -->
                            <div class="single--twitter-slide">
                                <!-- Single Twit -->
                                <div class="single-twit">
                                    <p><i class="fa fa-twitter"></i> <span>@Leonard</span> I am so happy because I found this magazine, and it just made Vizeweasier. Thanks for sharing</p>
                                </div>
                                <!-- Single Twit -->
                                <div class="single-twit">
                                    <p><i class="fa fa-twitter"></i> <span>@Leonard</span> I am so happy because I found this magazine, and it just made Vizeweasier. Thanks for sharing</p>
                                </div>
                            </div>

                            <!-- Single Twitter Slide -->
                            <div class="single--twitter-slide">
                                <!-- Single Twit -->
                                <div class="single-twit">
                                    <p><i class="fa fa-twitter"></i> <span>@Colorlib</span> I am so happy because I found this magazine, and it just made Vizeweasier. Thanks for sharing</p>
                                </div>
                                <!-- Single Twit -->
                                <div class="single-twit">
                                    <p><i class="fa fa-twitter"></i> <span>@Colorlib</span> I am so happy because I found this magazine, and it just made Vizeweasier. Thanks for sharing</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="footer-widget mb-70">
                        <h6 class="widget-title">Sport Videos</h6>

                        <!-- Single Blog Post -->
                        <div class="single-blog-post d-flex">
                            <div class="post-thumbnail">
                                <img src="img/bg-img/1.jpg" alt="">
                            </div>
                            <div class="post-content">
                                <a href="single-post.html" class="post-title">DC Shoes: gymkhana the</a>
                                <div class="post-meta d-flex justify-content-between">
                                    <a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i> 14</a>
                                    <a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a>
                                    <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> 84</a>
                                </div>
                            </div>
                        </div>

                        <!-- Single Blog Post -->
                        <div class="single-blog-post d-flex">
                            <div class="post-thumbnail">
                                <img src="img/bg-img/2.jpg" alt="">
                            </div>
                            <div class="post-content">
                                <a href="single-post.html" class="post-title">Sweet Yummy Chocolatea Tea</a>
                                <div class="post-meta d-flex justify-content-between">
                                    <a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i> 14</a>
                                    <a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 34</a>
                                    <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> 84</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="footer-widget mb-70">
                        <h6 class="widget-title">Our Address</h6>
                        <!-- Contact Address -->
                        <div class="contact-address">
                            <p>101 E 129th St, East Chicago, <br>IN 46312, US</p>
                            <p>Phone: 001-1234-88888</p>
                            <p>Email: info.colorlib@gmail.com</p>
                        </div>
                        <!-- Footer Social Area -->
                        <div class="footer-social-area">
                            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                            <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
        <!-- Copywrite Area -->
        <div class="copywrite-area">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Copywrite Text -->
                    <div class="col-12 col-sm-6">
                        <p class="copywrite-text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                    <div class="col-12 col-sm-6">
                        <nav class="footer-nav">
                            <ul>
                                <li><a href="#">Advertise</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">Disclaimer</a></li>
                                <li><a href="#">Privacy</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        
    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>

</html>
