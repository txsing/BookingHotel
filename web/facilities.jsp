<%-- 
    Document   : facilities
    Created on : Dec 17, 2013, 1:01:37 PM
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
        <title>Facilities - Lamoon</title>

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
                <div id="sub-banner">
                    <div id="logo">
                        <img src="images/lamoon-logo.png" alt="" />
                    </div>
                    <img src="images/banner/sub-banner3.jpg" alt="" />
                </div>
                
                <!-- Main Menu -->
                <div id="menu" class="page">
                    <ul id="root-menu" class="sf-menu">
                        <li>
                            <a href="index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="about.jsp">About</a>
                        </li>
                        <li>
                            <a href="choose-room.jsp">Rooms</a>
                            <ul>
                                <li>
                                    <a href="choose-room.jsp"><span>&nbsp;&nbsp;&nbsp;- </span>Rooms and Suites</a>
                                </li>
                                <li>
                                    <a href="hotel-search.jsp"><span>&nbsp;&nbsp;&nbsp;- </span>Room Detail</a>
                                </li>
                                <li>
                                    <a href="reservation.jsp"><span>&nbsp;&nbsp;&nbsp;- </span>Reservation</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="facilities.jsp" class="active">Facilities</a>
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
                            <a href="choose-hotel.jsp">Events</a>
                            <ul>
                                <li>
                                    <a href="choose-hotel.jsp"><span>&nbsp;&nbsp;&nbsp;- </span>Default Blog</a>
                                </li>
                                <li>
                                    <a href="blog-left-sidebar.jsp"><span>&nbsp;&nbsp;&nbsp;- </span>Blog with Left Sidebar</a>
                                </li>
                                <li>
                                    <a href="single.jsp"><span>&nbsp;&nbsp;&nbsp;- </span>Default Single Post</a>
                                </li>
                                <li>
                                    <a href="single-left-sidebar.jsp"><span>&nbsp;&nbsp;&nbsp;- </span>Single Post with Left Sidebar</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;">Elements</a>
                            <ul>
                                <li>
                                    <a href="elements/layouts.html"><span>&nbsp;&nbsp;&nbsp;- </span>Layouts</a>
                                </li>
                                <li>
                                    <a href="elements/headings.html"><span>&nbsp;&nbsp;&nbsp;- </span>Headings</a>
                                </li>
                                <li>
                                    <a href="elements/buttons.html"><span>&nbsp;&nbsp;&nbsp;- </span>Buttons</a>
                                </li>
                                <li>
                                    <a href="elements/images-videos.html"><span>&nbsp;&nbsp;&nbsp;- </span>Images and Videos</a>
                                </li>
                                <li>
                                    <a href="elements/blockquotes.html"><span>&nbsp;&nbsp;&nbsp;- </span>Block Quotes</a>
                                </li>
                                <li>
                                    <a href="elements/tabs-tables.html"><span>&nbsp;&nbsp;&nbsp;- </span>Tabs and Tables</a>
                                </li>
                                <li>
                                    <a href="elements/messageboxes.html"><span>&nbsp;&nbsp;&nbsp;- </span>Message Boxes</a>
                                </li>
                                <li>
                                    <a href="javascript:;"><span>&nbsp;&nbsp;&nbsp;- </span>One More Level</a>
                                    <ul>
                                        <li>
                                            <a href="javascript:;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- </span>Sample Item#1</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- </span>Sample Item#2</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- </span>Sample Item#3</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="sign-in.jsp">Contact</a>
                        </li>
                        <li>
                            <a id="purchase" href="http://www.themeforest.net" title="Purchase this template"><img src="images/shoppingcart.png" alt="Purchase this template" /></a>
                        </li>
                    </ul>
                </div>
                
                <!-- Content -->
                <div id="content">
                    <div id="intro">
                        <h1><span>Our Facilities</span></h1>
                        <p>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                            laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
                            architecto
                        </p>
                    </div>
                    <div class="container section">
                        <div class="half column center">
                            <p><img src="images/facilities/facility1.jpg" alt="" /></p>
                            <h3 class="nobg">Fitness Center</h3>
                            <p>
                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui.
                            </p>
                        </div>
                        <div class="half column center last">
                            <p><img src="images/facilities/facility2.jpg" alt="" /></p>
                            <h3 class="nobg">The Bar</h3>
                            <p>
                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui.
                            </p>
                        </div>
                    </div>
                    <div class="container section">
                        <div class="half column center">
                            <p><img src="images/facilities/facility3.jpg" alt="" /></p>
                            <h3 class="nobg">Spa &amp; Massage</h3>
                            <p>
                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui.
                            </p>
                        </div>
                        <div class="half column center last">
                            <p><img src="images/facilities/facility4.jpg" alt="" /></p>
                            <h3 class="nobg">Golf Club</h3>
                            <p>
                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui.
                            </p>
                        </div>
                    </div>
                    <div class="container section">
                        <div class="half column center">
                            <p><img src="images/facilities/facility5.jpg" alt="" /></p>
                            <h3 class="nobg">Swimming Pool</h3>
                            <p>
                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui.
                            </p>
                        </div>
                        <div class="half column center last">
                            <p><img src="images/facilities/facility6.jpg" alt="" /></p>
                            <h3 class="nobg">V.I.P. Restaurant</h3>
                            <p>
                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui.
                            </p>
                        </div>
                    </div>
                </div>
                
                <!-- Footer -->
                <div id="footer">
                    <div class="container section end">
                        <div id="footer-about" class="one-fourth column">
                            <p><img src="images/footer-logo.png" alt="" />
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, seddo eiusmod tempor.
                            </p>
                            <p>
                                456 Mahata St., Maui Island, Hawaii, P203-4
                            </p>
                            <p>
                                <span>Tel: +123-456-789</span>
                                <span>Fax: +123-456-007</span>
                                <span>Email: <a href="#"><span id="__cf_email__" class="b4d7dbdac0d5d7c0f4d8d5d9dbdbda9ad7dbd9">[email&nbsp;protected]</span><script type="text/javascript">
/* <![CDATA[ */
(function(){try{var s,a,i,j,r,c,l=document.getElementById("__cf_email__");a=l.className;if(a){s='';r=parseInt(a.substr(0,2),16);for(j=2;a.length-j;j+=2){c=parseInt(a.substr(j,2),16)^r;s+=String.fromCharCode(c);}s=document.createTextNode(s);l.parentNode.replaceChild(s,l);}}catch(e){}})();
/* ]]> */
</script></a></span>
                            </p>
                        </div>
                        <div id="footer-events" class="one-fourth column">
                            <h4><span class="footer left">News &amp; Events</span></h4>
                            <ul>
                                <li>
                                    <a href="single.jsp">Sed ut perspiciatis unde omnis iste natus error sit.</a>
                                </li>
                                <li>
                                    <a href="single.jsp">Duis aute irure dolor in reprehenderit in voluptate velit.</a>
                                </li>
                                <li>
                                    <a href="single.jsp">Excepteur sint occaecat cupidatat non proident, sunt inculpa qui officia deserunt.</a>
                                </li>
                            </ul>
                        </div>
                        <div id="footer-offers" class="one-fourth column">
                            <h4><span class="footer left">Special Offers</span></h4>
                            <ul>
                                <li>
                                    <a href="single.jsp"><img src="images/offers-item1.jpg" alt="" />Sed ut perspiciatis unde omnis iste natus error sit.</a>
                                </li>
                                <li>
                                    <a href="single.jsp"><img src="images/offers-item2.jpg" alt="" />Duis aute irure dolor in reprehenderit in.</a>
                                </li>
                                <li>
                                    <a href="single.jsp"><img src="images/offers-item3.jpg" alt="" />Excepteur sint occaecat cupidatat non proident.</a>
                                </li>
                            </ul>
                        </div>
                        <div id="footer-gallery" class="one-fourth column last">
                            <h4><span class="footer left">Photo Gallery</span></h4>
                            <ul>
                                <li>
                                    <a href="images/gallery/beach/1.jpg" class="image-box" rel="beach"><img src="images/footer-gallery1.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="images/gallery/beach/2.jpg" class="image-box" rel="beach"><img src="images/footer-gallery2.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="images/gallery/beach/3.jpg" class="image-box" rel="beach"><img src="images/footer-gallery3.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="images/gallery/beach/4.jpg" class="image-box" rel="beach"><img src="images/footer-gallery4.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="images/gallery/beach/5.jpg" class="image-box" rel="beach"><img src="images/footer-gallery5.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="images/gallery/beach/6.jpg" class="image-box" rel="beach"><img src="images/footer-gallery6.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="images/gallery/beach/7.jpg" class="image-box" rel="beach"><img src="images/footer-gallery7.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="images/gallery/beach/8.jpg" class="image-box" rel="beach"><img src="images/footer-gallery8.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="images/gallery/beach/9.jpg" class="image-box" rel="beach"><img src="images/footer-gallery9.jpg" alt="" /></a>
                                </li>
                            </ul>
                            <p>
                                <a href="gallery.jsp">View all</a>
                            </p>
                        </div>
                    </div>
                </div>
                
                <!-- Copyright and Social Icons -->
                <div id="copyright">
                    <div class="container section end">
                        <ul id="social">
                            <li>
                                <a href="#"><img src="images/social/facebook.png" alt="" /></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/social/flickr.png" alt="" /></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/social/twitter.png" alt="" /></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/social/vimeo.png" alt="" /></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/social/rss.png" alt="" /></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/social/google-plus.png" alt="" /></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/social/linkedin.png" alt="" /></a>
                            </li>
                            <li>
                                <a href="#"><img src="images/social/dribbble.png" alt="" /></a>
                            </li>
                        </ul>
                        <span id="text">&copy; Copyright &copy; 2013.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>.</span>

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
