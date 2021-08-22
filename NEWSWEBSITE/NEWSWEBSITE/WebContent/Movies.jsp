<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>INSIGHT DAILY</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="assets/font/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="assets/font/font.css" />
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" media="screen" />
<link rel="stylesheet" type="text/css" href="assets/css/style.css" media="screen" />
<link rel="stylesheet" type="text/css" href="assets/css/responsive.css" media="screen" />
<link rel="stylesheet" type="text/css" href="assets/css/jquery.bxslider.css" media="screen" />
</head>
<body>
<div class="body_wrapper">
  <div class="center">
    <div class="header_area">
      <div class="logo floatleft"><a href="#"><img src="images/logo.png" alt="" /></a></div>
      <div class="top_menu floatleft">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact us</a></li>
          <li><a href="#">Subscribe</a></li>
          <li><a href="login.html">Login</a></li>
        </ul>
      </div>
      <div class="social_plus_search floatright">
        <div class="social">
          <ul>
            <li><a href="#" class="twitter"></a></li>
            <li><a href="#" class="facebook"></a></li>
            <li><a href="#" class="feed"></a></li>
          </ul>
        </div>
        <div class="search">
          <form action="#" method="post" id="search_form">
            <input type="text" value="Search news" id="s" />
            <input type="submit" id="searchform" value="search" />
            <input type="hidden" value="post" name="post_type" />
          </form>
        </div>
      </div>
    </div>
    <div class="main_menu_area">
      <ul id="nav">
        <li><a href="#">HOME</a>
          <ul>
            <li><a href="#">abc</a></li>
            <li><a href="#">def</a></li>
            <li><a href="#">ghi</a>
             <!--   <ul>
                <li><a href="#">Single item</a></li>
                <li><a href="#">Single item</a></li>
                <li><a href="#">Single item</a></li>
                <li><a href="#">Single item</a></li>
                <li><a href="#">Single item</a></li>
              </ul>-->
            </li>
            <li><a href="#">Single item</a></li>
            <li><a href="#">Single item</a></li>
          </ul>
        </li>
        <li><a href="#">SPORTS</a></li>
        <li><a href="#">POLITICAL</a>
          <ul>
            <li><a href="#">Single item</a></li>
            <li><a href="#">Single item</a></li>
            <li><a href="#">Single item</a></li>
            <li><a href="#">Single item</a></li>
            <li><a href="#">Single item</a></li>
          </ul>
        </li>
        <li><a href="#">BUSINESS</a></li>
        <li><a href="#">ENTERTAINMENT</a>
          <ul>
            <li><a href="Movies.jsp">Movies</a></li>
            <li><a href="#">Television</a></li>
            <li><a href="#">Music</a></li>
              <!-- <ul>
                <li><a href="#">Single item</a></li>
                <li><a href="#">Single item</a></li>
                <li><a href="#">Single item</a></li>
                <li><a href="#">Single item</a></li>
                <li><a href="#">Single item</a></li>
              </ul>-->
            
            <li><a href="#">Fashion</a></li>
            <li><a href="#">Gallery</a>
            <ul>
                <li><a href="#">Photos</a></li>
                <li><a href="#">Videos</a></li>
            </ul>
            </li>
          </ul>
         </li>
        
         
        
        <li><a href="#">classifieds</a></li>
        <li><a href="#">blogs</a></li>
      </ul>
    </div>
    <div class="slider_area">
      <div class="slider">
        <ul class="bxslider">
          <li><img src="images/slidermalang.jpg" alt="" title="Slider caption text" /></li>
          <li><img src="images/love.jpg" alt="" title="Slider caption text" /></li>
          <li><img src="images/thappad.jpg" alt="" title="Slider caption text" /></li>
        </ul>
      </div>
    </div>
    <div class="content_area">
      <div class="main_content floatleft">
        <div class="left_coloum floatleft">
          <div class="single_left_coloum_wrapper">
            <h2 class="title">from   around   the   world</h2>
            <a class="more" href="#">more</a>
            <div class="single_left_coloum floatleft"> <img src="images/malang-box-office-collection-day-1.jpg" alt="" />
              <h3>Malang is all set to be a hit</h3>
              <p>Malang becomes Aditya Roy Kapoor's biggest solo weekend opener with Rs.25.36 cr nett.</p>
              <a class="readmore" href="#">read more</a> </div>
            <div class="single_left_coloum floatleft"> <img src="images/my name is khan.jpg" alt="" />
              <h3>Karan Johar's My Name Is Khan completes 10 years after release.</h3>
              <p>Nulla quis lorem neque, mattis venenatis lectus. In interdum ullamcorper 
                dolor eu mattis.</p>
              <a class="readmore" href="#">read more</a> </div>
            <div class="single_left_coloum floatleft"> <img src="images/lfw.jpeg" alt="" />
              <h3>Lakme Washion Week</h3>
              <p>Janhvi Kapoor and Vicky Kaushal walk the ramp in style for Reliance Trends at Lakme Fashion Week.</p>
              <a class="readmore" href="#">read more</a> </div>
              
              
          </div>
          
          <div class="single_left_coloum_wrapper">
            <h2 class="title">OSCARS 2020</h2>
            <a class="more" href="#">more</a>
            <div class="single_left_coloum floatleft"> <img src="images/joaquin_phoenix_quotes_late_brother_river_in_tearful_oscar_speech_200210_gbrfm8mr27.jpg" alt="" />
              <h3>Joaquin Phoenix</h3>
              <p>Joaquin Phoenix wins the oscar for his role as Arthur Fleck in Joker.</p>
              <a class="readmore" href="#">read more</a> </div>
            <div class="single_left_coloum floatleft"> <img src= "images/parasite.jpg"alt="" />
              <h3>Parasite</h3>
              <p>Parasite won 4 Oscars ans makes Oscar history.</p>
              <a class="readmore" href="#">read more</a> </div>
            <div class="single_left_coloum floatleft"> <img src="images/renee.jpg" alt="" />
              <h3>Renée Zellweger</h3>
              <p>Renée Zellweger wins the Oscar for actress in leading role for Judy.</p>
              <a class="readmore" href="#">read more</a> </div>
          </div>
          
          <div class="single_left_coloum_wrapper gallery">
            <h2 class="title">gallery</h2>
            
            
            <a class="more" href="#">more</a> <img src="images/armaan.jpg" alt="" /> <img src="images/1561180270-deepika-airport5.jpg" alt="" /> <img src="images/bhumi-pednekars-gown-at-filmfare-2020-202002-1581869195.jpg" alt="" /> <img src="images/single_featured.png" alt="" /> <img src="images/Ranveer-Singh_1704cd2c523_original-ratio.jpg" alt="" /> <img src="images/single_featured.png" alt="" /> </div>
          <div class="single_left_coloum_wrapper">
            <h2 class="title">RELEASING THIS YEAR</h2>
            <a class="more" href="#">more</a>
            <div class="single_left_coloum floatleft"> <img src="images/thebigbull1-1581578839.jpg" alt="" />
              <h3>THE BIG BULL</h3>
              <p>The film will be releasing on 23rd october 2020 starring Abhishek Bachchan.</p>
              <a class="readmore" href="#">read more</a> </div>
            <div class="single_left_coloum floatleft"> <img src="images/Chhalaang-Hindi-Movie-2020.jpg" alt="" />
              <h3>CHHALAANG</h3>
              <p>Rajkumar Rao and Nushrat Bharucha feature in the latest poster of Chhalaang.</p>
              <a class="readmore" href="#">read more</a> </div>
            <div class="single_left_coloum floatleft"> <img src="images/thappad.jpg" alt="" />
              <h3>THAPPAD</h3>
              <p>The film stars Taapsee Pannu and will be releasing on 28 February 2020.</p>
              <a class="readmore" href="#">read more</a> </div>
            <div class="single_left_coloum floatleft"> <img src="images/single_featured.png" alt="" />
              <h3>BLACK WIDOW</h3>
              <p>A film about Natasha Romanoff in her quests between the films Civil War and Infinity War.</p>
              <a class="readmore" href="#">read more</a> </div>
            <div class="single_left_coloum floatleft"> <img src="images/single_featured.png" alt="" />
              <h3>WONDER WOMAN 1984</h3>
              <p>A sequel to the 2017 superhero film 'Wonder Woman'starring Pedro Pascal,Gal Gadot,Chris Pine and Connie Nielsen.</p>
              <a class="readmore" href="#">read more</a> </div>
            <div class="single_left_coloum floatleft"> <img src="images/single_featured.png" alt="" />
              <h3>THE PERSONAL HISTORY OF DAVID COPPERFIELD</h3>
              <p>This is an adaptation of a Charles Dickens novel starring Dev Patel. This will be dreamy.</p>
              <a class="readmore" href="#">read more</a> </div>
          </div>
          
          
          
          <div class="single_left_coloum_wrapper single_cat_left">
            <h2 class="title">TRENDING</h2>
            <a class="more" href="#">more</a>
            <div class="single_cat_left_content floatleft">
              <h3>#Anissamaangayi </h3>
              <p>Armaan Jain and Anissa Malhotra got married on February 2020.</p>
             <!--   <p class="single_cat_left_content_meta">by <span></span> |  29 comments</p>-->
            </div>
            <div class="single_cat_left_content floatleft">
              <h3>Ananya got her first black lady  </h3>
              <p>Ananya Panday got the filmfare award for her debut in SOTY2.</p>
              <!--  <p class="single_cat_left_content_meta">by <span>John Doe</span> |  29 comments</p>-->
            </div>
            <div class="single_cat_left_content floatleft">
              <h3>Gully Boy ruled this filmfare </h3>
              <p>The Zoya Akhtar 'Gully Boy' won the most number of filmfare this year.</p>
              <!--  <p class="single_cat_left_content_meta">by <span>John Doe</span> |  29 comments</p>-->
            </div>
            <div class="single_cat_left_content floatleft">
              <h3>Ranveer pays tribute to RD Burman </h3>
              <p>Ranveer performed on all the songs of the legend RD Burman to pay him tribute.</p>
              <p class="single_cat_left_content_meta">by <span>John Doe</span> |  29 comments</p>
            </div>
          </div>
        </div>
        <div class="right_coloum floatright">
          <div class="single_right_coloum">
            <h2 class="title">BOX OFFICE</h2>
            <ul>
              <li>
                <div class="single_cat_right_content">
                  <h3>MALANG</h3>
                  <p>Malang is holding up reasonably well over the weekdays.It has collected 35 crore nett in six days and will do week of 38 crore nett.</p>
                  <p class="single_cat_right_content_meta"><a href="#"><span>read more</span></a> 3 hours ago</p>
                </div>
              </li>
              <li>
                <div class="single_cat_right_content">
                  <h3>SHIKARA</h3>
                  <p>Shikara collected just 6 crore nett in the first week and that should be it for the film</p>
                  <p class="single_cat_right_content_meta"><a href="#"><span>read more</span></a> 3 hours ago</p>
                </div>
              </li>
              <li>
                <div class="single_cat_right_content">
                  <h3>LOVE AAJKAL</h3>
                  <p>Nulla quis lorem neque, mattis venen atis lectus. In interdum ull amcorper dolor eu mattis.</p>
                  <p class="single_cat_right_content_meta"><a href="#"><span>read more</span></a> 3 hours ago</p>
                </div>
              </li>
            </ul>
            <a class="popular_more" href="#">more</a> </div>
          <div class="single_right_coloum">
            <h2 class="title">CELEBS EXPECTED TO TIE THE KNOT THIS YEAR </h2>
            <div class="single_cat_right_content editorial"> <img src="images/ranbiralia.jpg" alt="" />
              <h3>Ranbir Kapoor and Alia Bhatt </h3>
            </div>
            <div class="single_cat_right_content editorial"> <img src="images/farhan-akhtar-shibani-dandekar-1553680967.jpg" alt="" />
              <h3>Farhan Akhtar and Shibani Dandekar</h3>
            </div>
            <div class="single_cat_right_content editorial"> <img src="images/varun.jpg" alt="" />
              <h3>Varun Dhawan and Natasha Dalal.</h3>
            </div>
            <div class="single_cat_right_content editorial"> <img src="images/katy-perry-and-orlando-bloom-attend-the-la-premiere-of-news-photo-1572283797.jpg" alt="" />
              <h3>Orlando Bloom and Katy Perry</h3>
            </div>
            <div class="single_cat_right_content editorial"> <img src="images/jennifer.jpg"alt="" />
              <h3>Alex Rodriguez and Jennifer Lopez</h3>
            </div>
          </div>
        </div>
      </div>
      <div class="sidebar floatright">
        <div class="single_sidebar"> <img src="images/add1.png" alt="" /> </div>
        <div class="single_sidebar">
          <div class="news-letter">
            <h2>Sign Up for Newsletter</h2>
            <p>Sign up to receive our free newsletters!</p>
            <form action="#" method="post">
              <input type="text" value="Name" id="name" />
              <input type="text" value="Email Address" id="email" />
              <input type="submit" value="SUBMIT" id="form-submit" />
            </form>
            <p class="news-letter-privacy">We do not spam. We value your privacy!</p>
          </div>
        </div>
        <div class="single_sidebar">
          <div class="popular">
            <h2 class="title">Popular</h2>
            <ul>
              <li>
                <div class="single_popular">
                  <p>Sept 24th 2045</p>
                  <h3>Lorem ipsum dolor sit amet conse ctetur adipiscing elit <a href="#" class="readmore">Read More</a></h3>
                </div>
              </li>
              <li>
                <div class="single_popular">
                  <p>Sept 24th 2045</p>
                  <h3>Lorem ipsum dolor sit amet conse ctetur adipiscing elit <a href="#" class="readmore">Read More</a></h3>
                </div>
              </li>
              <li>
                <div class="single_popular">
                  <p>Sept 24th 2045</p>
                  <h3>Lorem ipsum dolor sit amet conse ctetur adipiscing elit <a href="#" class="readmore">Read More</a></h3>
                </div>
              </li>
              <li>
                <div class="single_popular">
                  <p>Sept 24th 2045</p>
                  <h3>Lorem ipsum dolor sit amet conse ctetur adipiscing elit <a href="#" class="readmore">Read More</a></h3>
                </div>
              </li>
              <li>
                <div class="single_popular">
                  <p>Sept 24th 2045</p>
                  <h3>Lorem ipsum dolor sit amet conse ctetur adipiscing elit <a href="#" class="readmore">Read More</a></h3>
                </div>
              </li>
            </ul>
            <a class="popular_more">more</a> </div>
        </div>
        <div class="single_sidebar"> <img src="images/add1.png" alt="" /> </div>
        <div class="single_sidebar">
          <h2 class="title">ADD</h2>
          <img src="images/add2.png" alt="" /> </div>
      </div>
    </div>
    <div class="footer_top_area">
      <div class="inner_footer_top"> <img src="images/add3.png" alt="" /> </div>
    </div>
    <div class="footer_bottom_area">
      <div class="footer_menu">
        <ul id="f_menu">
          <li><a href="#">world news</a></li>
          <li><a href="#">sports</a></li>
          <li><a href="#">tech</a></li>
          <li><a href="#">business</a></li>
          <li><a href="#">Movies</a></li>
          <li><a href="#">entertainment</a></li>
          <li><a href="#">culture</a></li>
          <li><a href="#">Books</a></li>
          <li><a href="#">classifieds</a></li>
          <li><a href="#">blogs</a></li>
        </ul>
      </div>
      <div class="copyright_text">
        <p>Copyright &copy; 2045 Insight Daily Inc. All rights reserved | Design by <a target="_blank" rel="nofollow" href="http://www.graphicsfuel.com/2045/10/wp-magazine-theme-template-psd/">Rafi MD</a></p>
        <p>Trade marks and images used in the design are the copyright of their respective owners and are used for demo purposes only.</p>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="assets/js/jquery-min.js"></script> 
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="assets/js/jquery.bxslider.js"></script> 
<script type="text/javascript" src="assets/js/selectnav.min.js"></script> 
<script type="text/javascript">
selectnav('nav', {
    label: '-Navigation-',
    nested: true,
    indent: '-'
});
selectnav('f_menu', {
    label: '-Navigation-',
    nested: true,
    indent: '-'
});
$('.bxslider').bxSlider({
    mode: 'fade',
    captions: true
});
</script>
</body>
</html>