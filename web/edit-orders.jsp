<%-- 
    Document   : edit-orders
    Created on : Dec 18, 2013, 7:36:54 PM
    Author     : Kara
--%>

<%@page language="java" %>
<%@page import="com.mysql.jdbc.Driver" %>
<%@page import="java.sql.*" %> 
<%@page import="com.txsing.dblogic.SignIn"%>
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
        <title>Delete Order | HOTEL!</title>

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
                            <a href="edit-orders.jsp" class="active">Orders</a>
                        </li>
                        <%if(SignIn.idS.equals("admin")){%>
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
                    <div id="intro">
                        <h1><span>Here are the orders below</span></h1>
                        <p>
                            You can cancel one of them and the room will become available automatically.
                        </p>
                    </div>
                    <div class="container section">
                        <div class="full-width column">
                            <%
                                String sql = "select nameU, idO, type, checkin_time, checkout_time, create_time, price from indent,user,room where indent.idH ="
                                        + "'"+SignIn.idH+"'" + "and indent.idU = user.idU and room.idR = indent.idR and room.idH = indent.idH";
                                String userName = "txsing";
                                String userPasswd = "scse1196";
                                String dbName = "test";
                                String url = "jdbc:mysql://localhost/" + dbName + "?user=" + userName + "&password=" + userPasswd;
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                Connection connection = DriverManager.getConnection(url);
                                Statement statement = connection.createStatement();
                                ResultSet rs = statement.executeQuery(sql);
                            %>
                            <form action="ManageIndent" method="get">
                                <table border="0">
                                    <thead>
                                        <tr>
                                            <th> User name </th>
                                            <th> Indent No. </th>
                                            <th> Room Type </th>
                                            <th> Check in time </th>
                                            <th> Check out time </th>
                                            <th> Create time </th>
                                            <th> Price </th>
                                            <th> Operation </th>
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
                                            <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(6) + "&nbsp;&nbsp;&nbsp;");%></td>
                                            <td><% out.print("&nbsp;&nbsp;&nbsp;" + rs.getString(7) + " S$" + "&nbsp;&nbsp;&nbsp;");%></td>
                                            <td>                        
                                                <input type="radio" name="idO" value=<%=rs.getString(2)+"2"%>> Cancel<br>
                                            </td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                                    <p>
                                                     
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="submit" id="submit" class="medium gray button" value="Submit" />
                                    </p>
                            </form>
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