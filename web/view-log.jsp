<%-- 
    Document   : view-log
    Created on : Dec 18, 2013, 7:39:31 PM
    Author     : txsing
--%>

<%@page language="java" %>
<%@page import="com.mysql.jdbc.Driver" %>
<%@page import="java.sql.*" %> 
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
        <title>View Log | HOTEL!</title>

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
                            <a href="hotel-info.jsp">Hotel Info</a>
                        </li>
                        <li>
                            <a href="edit-orders.jsp">Orders</a>
                        </li>
                        <%if (SignIn.idS.equals("admin")) {%>
                        <li>
                            <a href="edit-staffs.jsp">Staffs</a>
                        </li>
                        <li>
                            <a href="view-log.jsp" class="active">Log</a>
                        </li>
                        <%}%>
                    </ul>
                </div>

                <!-- Content -->
                <div id="content" class="reservation">
                    <div id="intro">
                        <h1><span>Here are the logs below</span></h1>
                        <p>
                            This is used to record the operations of staffs.
                        </p>
                    </div>
                    <div class="container section">
                        <div class="full-width column">
                            <%
                                String sql = "select * from logs where idH = '" + SignIn.idH + "' ";
                                Connection connection = DBConnector.connectPostgres(SystemParameters.getUrl(),
                                        SystemParameters.user, SystemParameters.passwd);
                                Statement statement = connection.createStatement();
                                ResultSet rs = statement.executeQuery(sql);
                            %>
                            <table border="0">
                                <thead>
                                    <tr>
                                        <th> Staff id </th>
                                        <th> Indent No. </th>
                                        <th> Time </th>
                                        <th> Operation type </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% while (rs.next()) {%>
                                    <tr>
                                        <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(3) + "&nbsp;&nbsp;&nbsp;");%></td>
                                        <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(4) + "&nbsp;&nbsp;&nbsp;");%></td>
                                        <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(5) + "&nbsp;&nbsp;&nbsp;");%></td>
                                        <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(6) + "&nbsp;&nbsp;&nbsp;");%></td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
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