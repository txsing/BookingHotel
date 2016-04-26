<%-- 
    Document   : hotel-info
    Created on : Dec 18, 2013, 7:34:54 PM
    Author     : txsing
--%>

<%@page import="com.txsing.bookhotel.dblogic.SignIn"%>
<%@page import="com.txsing.bookhotel.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Info | HOTEL!</title>

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
        <link rel="stylesheet" href="css/validationEngine.jquery.css" />
        <link rel="stylesheet" href="css/smoothness/jquery-ui-1.8.22.custom.css" />
        <link rel="stylesheet" href="css/ui.spinner.css" />
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
                    <img src="images/banner/sub-banner2.jpg" alt="" />
                </div>

                <!-- Main Menu -->
                <div id="menu" class="home">
                    <ul id="root-menu" class="sf-menu">
                        <li>
                            <a href="staff-select.jsp">Home</a>
                        </li>
                        <li>
                            <a href="hotel-info.jsp" class="active">Hotel Info</a>
                        </li>
                        <li>
                            <a href="edit-orders.jsp">Orders</a>
                        </li>
                        <%if (SignIn.idS.equals("admin")) {%>
                        <li>
                            <a href="edit-staffs.jsp">Staffs</a>
                        </li>
                        <li>
                            <a href="view-log.jsp">Log</a>
                        </li>
                        <%}%>
                    </ul>
                </div>

                <!-- Content -->
                <div id="content" class="reservation">
                    <div class="container section">
                        <div class="one-third column">
                            <h3 class="nobg">Edit the hotel information</h3>
                            <p>
                                Note that this operation will be recorded in the log.
                            </p>
                            <div class="warning box">
                                This operation can not be undone.
                            </div>
                        </div>
                        <div class="two-third column last">
                            <h3><span class="left">Current hotel information</span></h3>
                            <%
                                String sql = "select * from hotels where idH = '" + SignIn.idH + "'";
                                Connection connection = DBConnector.connectPostgres(SystemParameters.getUrl(),
                                        SystemParameters.user, SystemParameters.passwd);
                                Statement statement = connection.createStatement();
                                ResultSet rs = statement.executeQuery(sql);
                            %>
                            <table border="0">
                                <thead>
                                    <tr>
                                        <th> Name </th>
                                        <th> Location </th>
                                        <th> Facility </th>
                                        <th> Star </th>
                                        <th> Contact </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% while (rs.next()) {%>
                                    <tr>
                                        <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(1) + "&nbsp;&nbsp;&nbsp;");%></td>
                                        <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(2) + "&nbsp;&nbsp;&nbsp;");%></td>
                                        <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(3) + "&nbsp;&nbsp;&nbsp;");%></td>
                                        <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(4) + "&nbsp;&nbsp;&nbsp;");%></td>
                                        <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(5) + "&nbsp;&nbsp;&nbsp;");%></td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                            <h3 class="extra-margin top"><span class="left">New hotel information</span></h3>
                            <form action="ModifyHotel" method="get">
                                <p>
                                    <label for="id">New name:</label>
                                    <input id="id"type="text" name="hotelName" />
                                </p>
                                <p>
                                    <label for="id">New location:</label>
                                    <input id="id"type="text" name="hotelLocation" />
                                </p>
                                <p>
                                    <label for="id">New facilities:</label>
                                    <input id="id"type="text" name="hotelFacilities" />
                                </p>
                                <p>
                                    <label for="id">New contact number:</label>
                                    <input id="id"type="text" name="hotelContact" />
                                </p>
                                <p>
                                    <label for="hotelStar">New star level:</label>
                                    <select id="hotelStar" name="hotelStar">
                                        <option value="unchanged">unchanged</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </p>
                                <input type="submit" id="submit" class="medium gray button" value="Submit" />
                            </form>
                            <!--                            <div id="success" class="success box">
                                                            Thank you. We have received your reservation info and will contact you back shortly.
                                                        </div>
                                                        <div id="error" class="error box">
                                                            Something went wrong, please try again later. We truly apologize for the inconvenience.
                                                        </div>-->
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
        <script type="text/javascript" src="scripts/jquery.fancybox-1.3.4.pack.js"></script>
        <script type="text/javascript" src="scripts/jquery.validationEngine.js"></script>
        <script type="text/javascript" src="scripts/jquery.validationEngine-en.js"></script>
        <script type="text/javascript" src="scripts/jquery-ui-1.8.22.custom.min.js"></script>
        <script type="text/javascript" src="scripts/ui.spinner.min.js"></script>
        <script type="text/javascript" src="scripts/lamoon.js"></script>

        <div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
    </body>
</html>
