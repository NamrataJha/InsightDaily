    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Driver" %>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
     
    <%
   	String user,email,password,q1,a1,q2,a2,q3,a3;
    int uid=1000;
    try
    {
   		 Class.forName("com.mysql.jdbc.Driver").newInstance();
    	 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/insightdaily","root","myproject");
    	 Statement stmt=conn.createStatement();
    if(request.getParameter("submit")!=null)
    {
    user=request.getParameter("Username");
    email=request.getParameter("emailId");
    password=request.getParameter("pass");
    q1=request.getParameter("ques1");
    a1=request.getParameter("Ans1");
    q2=request.getParameter("ques2");
    a2=request.getParameter("Ans2");
    q3=request.getParameter("ques3");
    a3=request.getParameter("Ans3");
    uid=uid+6;
    
    int x=stmt.executeUpdate("insert into register values("+uid+",'"+user+"','"+email+"','"+password+"','"+q1+"','"+a1+"','"+q2+"','"+a2+"','"+q3+"','"+a3+"')");
    if(x>0)
    {
    	out.println("successful");
        response.sendRedirect("home.jsp");
    }
        
    else
    	out.println("not successful");
    }
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    //response.sendRedirect("home.jsp");
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
    <title>Register Yourself</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>
<body>

    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
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
                                    <li><a href="single-post.html">10 Things Amazon Echo Can Do</a></li>
                                    <li><a href="single-post.html">Welcome to Colorlib Family.</a></li>
                                    <li><a href="single-post.html">Boys 'doing well' after Thai</a></li>
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
                                <form action="index.html" method="post">
                                    <input type="search" name="top-search" id="topSearch" placeholder="Search...">
                                    <button type="submit" class="btn"><i class="fa fa-search" aria-hidden="true"></i></button>
                                </form>
                            </div>
                            <!-- Login -->
                            <a href="login.html" class="login-btn"><i class="fa fa-user" aria-hidden="true"></i></a>
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
    
        <div class="preloader d-flex align-items-center justify-content-center">
            <form method="POST" class="section-heading" id="appointment-form">
                <h2>Register yourself!</h2>
                
                <div class="form-group">
                                <input type="text" class="form-control" id="username" placeholder="Username">
                            </div>
                   <div class="form-group">
                                <input type="email" class="form-control" id="email" placeholder="Email ID">
                                </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password" placeholder="Password">
                            </div>
                    <div class="form-group">
                                <input type="password" class="form-control" id="conpassword" placeholder="Confirm Password">
                            </div>
                   
                </div>
                <div class="form-group-2">
                      <h3>Select security questions</h3>
                    <div class="select-list">
                        <select name="ques1" id="q1">
                            <option selected value="What is your hobby">What is your hobby?</option>
                            <option value="What is your nick name">What is your nick name?</option>
                            <option value="Which was your first school">Which was your first school?</option>
                        </select>
                        <input type="text" name="Ans1" id="a1" placeholder="Your answer" required />
                    </div>
                     
                    <div class="select-list">
                        <select name="ques2" id="q2">
                            <option selected value="What is your pet name">What is your pet's name?</option>
                            <option value="What was your birth place">What was your birth place?</option>
                            <option value="Who is your favorite teacher">Who is your favorite teacher?</option>
                        </select>
                        <input type="text" name="Ans2" id="a2" placeholder="Your answer" required />
                    </div>
                    
                </div>
                 <div class="select-list">
                        <select name="ques3" id="q3">
                            <option selected value="Who is your favorite author">Who is your favorite author?</option>
                            <option value="What is your zodiac sign">What is your zodiac sign?</option>
                            <option value="What is your favorite dish">What is your favorite dish?</option>
                        </select>
                         <input type="text" name="Ans3" id="a3" placeholder="Your answer" required />
                </div>
                   
                
                <div class="form-check">
                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                    <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree to the  <a href="#" class="term-service">Terms and Conditions</a></label>
                </div>
                <div class="form-submit">
                    <input type="submit" name="submit" id="submit" class="submit" value="REGISTER"/>
                    <a href="home.jsp"></a>
                </div>
            </form>
        </div>

   

    <!-- JS -->
    <script src="vendorregister/jquery/jquery.min.js"></script>
    <script src="jsregister/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>