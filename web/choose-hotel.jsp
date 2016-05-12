<%-- 
    Document   : blog
    Created on : Dec 17, 2013, 12:50:54 PM
    Author     : Kara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %> 
<%@page import="com.mysql.jdbc.Driver" %> 
<%@page import="java.sql.*" %> 
<%@page import="com.txsing.bookhotel.util.*"%>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choose Hotel | HOTEL!</title>

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
                    <img src="images/banner/sub-banner5.jpg" alt="" />
                </div>

                <!-- Main Menu -->
                <div id="menu" class="home">
                    <ul id="root-menu" class="sf-menu">
                        <li>
                            <a href="index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="hotel-search.jsp" class="active">Booking</a>
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
                        <h1><span>Choose a hotel</span></h1>
                        <p>
                            Choose a hotel you would like to live in
                        </p>
                    </div>
                    <div id="blog" class="container section">
                        <div id="blog-content" class="full-width column">
                            <%
                                //ResultSet rs = null;

                                String sql = (String) session.getAttribute("sql");
                                Connection connection = DBConnector.connectPostgres(SystemParameters.getUrl(),
                                        SystemParameters.user, SystemParameters.passwd);
                                Statement statement = connection.createStatement();
                                ResultSet rs = statement.executeQuery(sql);

                            %>
                            <form action="ChooseHotel" method="get">
                                <% while (rs.next()) {%>
                                <div class="blog-item">
                                    <img src="images/blog/blog3.jpg" width="750" alt="" />
                                    <h2 class="blog"><%out.print(rs.getString(1));%></h2>
                                    <p class="blog-item-meta">
                                        <%out.print(rs.getString(4));%> star(s) hotel
                                    </p>
                                    <p>Location: <%out.print(rs.getString(2));%></p>
                                    <p>Facility: <%out.print(rs.getString(3));%></p>
                                    <p>Contact:  <%out.print(rs.getString(5));%></p>
                                    <input type="radio" name="hotelid" value =<%=rs.getString(6)%>> Choose<br>
                                </div>
                                <%}%>
                                <input type="submit" class="small gray button" value="Submit" />
                            </form>
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

