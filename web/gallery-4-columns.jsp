<%-- 
    Document   : gallery-4-columns
    Created on : Dec 17, 2013, 1:18:13 PM
    Author     : Kara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <title>4-Columns Photo Gallery | HOTEL!</title>

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
        <link rel="stylesheet" href="css/jquery.nailthumb.1.1.css" />
        <link rel="stylesheet" href="css/isotope.css" />
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
                <div id="sub-banner">
                    <img src="images/banner/sub-banner4.jpg" alt="" />
                </div>
                
                <!-- Main Menu -->
                <div id="menu" class="home">
                    <ul id="root-menu" class="sf-menu">
                        <li>
                            <a href="index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="hotel-search.jsp">Booking</a>
                        </li>
                        <li>
                            <a href="gallery.jsp" class="active">Gallery</a>
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
                        <h1><span>4-Columns Photo Gallery</span></h1>
                    </div>
                    <div class="center container section">
                        <ul id="categories">
                            <li>
                                <a href="#" data-filter="*" class="active">View all</a>
                            </li>
                            <li>
                                <a href="#" data-filter=".beach">Beach</a>
                            </li>
                            <li>
                                <a href="#" data-filter=".resort">Resort</a>
                            </li>
                            <li>
                                <a href="#" data-filter=".room">Rooms</a>
                            </li>
                            <li class="last">
                                <a href="#" data-filter=".envato">Envato</a>
                            </li>
                        </ul>
                    </div>
                    <div class="container section">
                        <div id="gallery" class="four-columns">

                            <div class="beach photo-item hover">
                                <a href="images/highlight1.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/highlight1.jpg" alt="" /> </a>
                            </div>
                            <div class="beach resort photo-item hover">
                                <a href="images/highlight2.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/highlight2.jpg" alt="" /> </a>
                            </div>
                            <div class="resort photo-item hover">
                                <a href="images/highlight3.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/highlight3.jpg" alt="" /> </a>
                            </div>
                            <div class="room photo-item hover">
                                <a href="images/rooms/room1.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/rooms/room1.jpg" alt="" /> </a>
                            </div>
                            <div class="room photo-item hover">
                                <a href="images/rooms/room2.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/rooms/room2.jpg" alt="" /> </a>
                            </div>
                            <div class="room photo-item hover">
                                <a href="images/rooms/room3.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/rooms/room3.jpg" alt="" /> </a>
                            </div>
                            <div class="room photo-item hover">
                                <a href="images/rooms/room4.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/rooms/room4.jpg" alt="" /> </a>
                            </div>
                            <div class="room photo-item hover">
                                <a href="images/rooms/room5.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/rooms/room5.jpg" alt="" /> </a>
                            </div>
                            <div class="room photo-item hover">
                                <a href="images/rooms/room-pic2.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/rooms/room-pic2.jpg" alt="" /> </a>
                            </div>
                            <div class="envato photo-item hover">
                                <a href="images/gallery/beach/1.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/gallery/beach/1.jpg" alt="" /> </a>
                            </div>
                            <div class="beach envato photo-item hover">
                                <a href="images/gallery/beach/3.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/gallery/beach/3.jpg" alt="" /> </a>
                            </div>
                            <div class="beach envato photo-item hover">
                                <a href="images/gallery/beach/6.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/gallery/beach/6.jpg" alt="" /> </a>
                            </div>
                            <div class="resort envato photo-item hover">
                                <a href="images/gallery/beach/7.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/gallery/beach/7.jpg" alt="" /> </a>
                            </div>
                            <div class="resort envato photo-item hover">
                                <a href="images/gallery/beach/9.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/gallery/beach/9.jpg" alt="" /> </a>
                            </div>
                            <div class="envato photo-item hover">
                                <a href="images/gallery/beach/2.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/gallery/beach/2.jpg" alt="" /> </a>
                            </div>
                            <div class="envato photo-item hover">
                                <a href="images/gallery/beach/5.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/gallery/beach/5.jpg" alt="" /> </a>
                            </div>
                            <div class="envato photo-item hover">
                                <a href="images/gallery/beach/8.jpg" class="image-box">
                                <div class="photo">
                                    <span class="text"><span class="anchor"></span></span>
                                </div> <img src="images/gallery/beach/8.jpg" alt="" /> </a>
                            </div>

                        </div>
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
        <script type="text/javascript" src="scripts/jquery.nailthumb.1.1.min.js"></script>
        <script type="text/javascript" src="scripts/jquery.isotope.min.js"></script>
        <script type="text/javascript" src="scripts/jquery.fancybox-1.3.4.pack.js"></script>
        <script type="text/javascript" src="scripts/lamoon.js"></script>
        <script type="text/javascript" src="scripts/lamoon-gallery.js"></script>
    <div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
