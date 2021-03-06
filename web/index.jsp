<%-- 
    Document   : index
    Created on : Dec 17, 2013, 12:47:06 PM
    Author     : Kara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %> 
<%@page import="com.txsing.bookhotel.util.*"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <title>Home | HOTEL!</title>

        <!-- Meta tags -->
        <meta charset="utf-8">
        <!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
        <meta name="description" content="Premium Responsive Template for Resort and Hotel" />
        <meta name="author" content="UXbarn (http://themeforest.net/user/UXbarn?ref=UXbarn)" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/base.css" />
        <link rel="stylesheet" href="css/skeleton.css" />
        <link rel="stylesheet" href="css/flexslider.css" />
        <link rel="stylesheet" href="css/jquery.fancybox-1.3.4.css" />
        <link rel="stylesheet" href="css/lamoon.css" />
        <link href='http://fonts.googleapis.com/css?family=Lato|Lato:300|Vollkorn:400italic' rel='stylesheet' type='text/css'>
        
        <!--[if IE 9]>
        <link href="css/ie9.css" rel="stylesheet" type="text/css" />
        <![endif]-->

        <!--[if IE 8]>
        <link href="css/ie8.css" rel="stylesheet" type="text/css" />
        <![endif]-->

        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Favicons -->
        <link rel="shortcut icon" href="images/favicon.ico" />
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png" />
        <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png" />
        <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png" />
    </head>
    <body>
        
        <!-- Background Image -->
        <img src="images/bg1.jpg" class="bg" alt="" />
        
        <!-- Root Container -->
        <div id="root-container" class="container">
            <div id="wrapper" class="sixteen columns">
                
                <!-- Banner -->
                <div id="banner">
<!--                    <div id="logo">
                        <img src="images/lamoon-logo.png" alt="" />
                    </div>-->
                    <div id="banner-slider" class="flexslider">
                        <ul class="slides">
                            <li>
                                <img src="images/banner/banner3.jpg" alt="" />
                                <div class="left black banner-caption">
                                    <h2>Find the Suitable Hotel</h2>
                                    <p>
                                        There are many hotels you can choose from this website.
                                    </p>
                                </div>
                            </li>
                            <li>
                                <img src="images/banner/banner1.jpg" alt="" />
                                <div class="left white banner-caption">
                                    <h2>Booking Rooms Online</h2>
                                    <p>
                                        Just book your room online and it's simple and convenient.
                                    </p>
                                </div>
                            </li>
                            <li>
                                <img src="images/banner/banner2.jpg" alt="" />
                                <div class="right white banner-caption">
                                    <h2>Manage Your Hotel</h2>
                                    <p>
                                        Manage staff? Modify hotel information? It is all available!
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>

                </div>
                
                <!-- Main Menu -->
                <div id="menu" class="home">
                    <ul id="root-menu" class="sf-menu">
                        <li>
                            <a href="index.jsp" class="active">Home</a>
                        </li>
                        <li>
                            <a href="hotel-search.jsp">Booking</a>
                        </li>
                        <li>
                            <a href="gallery.jsp">Gallery</a>
                            <ul>
                                <li>
                                    <a href="gallery.jsp"><span>&nbsp;&nbsp;&nbsp;- </span>3-Columns Gallery</a>
                                </li>
                                <li>
                                    <a href="gallery-4-columns.jsp"><span>&nbsp;&nbsp;&nbsp;- </span>4-Columns Gallery</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="sign-in.jsp">Sign In (Staff)</a>
                        </li>
                        <li>
                            <a href="about.jsp">About</a>
                        </li>
                    </ul>
                </div>
                
                <!-- Content -->
                <div id="content">
                    <div id="intro">
                        <h1><span>Welcome to HOTEL!</span></h1>
                        <p>
                            This is an web site for you to search a suitable hotel and book a room, the operations involved are simple and
                            convenient. Also for hotel management, this web site can be used by staffs to manege the
                            information of their hotel. Enjoy the tour!
                        </p>
                        <p>
                            <a href="hotel-search.jsp" class="large gray button">Start Booking</a>
                        </p>
                    </div>
                    <div id="highlight" class="container section">
                        <div class="half column">
                            <div class="highlight-img">
                                <img src="images/highlight0.jpg" alt="" />
                            </div>
                        </div>
                        <div class="half column last">
                            <div class="highlight-content">
                                <h2 class="nobg">Special Promotion!</h2>
                                <p>
                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                                    laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis.
                                </p>
                                <p>
                                    <span class="price">Only $299 / night *</span>
                                </p>
                                <p>
                                    <a href="#" class="small brown button">Learn more</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div id="feature" class="container section">
                        <div class="one-third column">
                                <p>
                                    <img src="images/highlight1.jpg" alt="" />
                                </p>
                            <h3><span>Various Hotels</span></h3>
                        </div>
                        <div class="one-third column">
                                <p>
                                    <img src="images/highlight2.jpg" alt="" />
                                </p>
                            <h3><span>Choose Room</span></h3>
                        </div>
                        <div class="one-third column">
                                <p>
                                    <img src="images/highlight3.jpg" alt="" />
                                </p>
                            <h3><span>Perfect Management</span></h3>
                        </div>
                    </div>
                
                
                <div id="copyright">
                    <div class="container section end">
                        <span id="text">  </span>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- JavaScript Files -->
        <script type="text/javascript" src="scripts/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="scripts/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="scripts/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="scripts/jquery.hoverIntent.minified.js"></script>
        <script type="text/javascript" src="scripts/superfish.js"></script>
        <script type="text/javascript" src="scripts/jquery.cycle.lite.js"></script>
        <script type="text/javascript" src="scripts/jquery.fancybox-1.3.4.pack.js"></script>
        <script type="text/javascript" src="scripts/lamoon.js"></script>

    <div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

