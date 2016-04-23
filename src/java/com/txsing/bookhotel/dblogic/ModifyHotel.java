/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.txsing.dblogic;

import static com.txsing.dblogic.ManageIndent.idO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kara
 */
public class ModifyHotel extends HttpServlet {
     String newHotelName;
     String newHotelLocation;
     String newHotelFacilities;
     String newHotelContact;
     String newHotelStar;
     String sqlChangeName;
     String sqlChangeLocation;
     String sqlChangeFacilities;
     String sqlChangeContact;
     String sqlChangeStar;
     Connection connection;
     Statement statement;
     boolean isChanged = false;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            statement.close(); 
            connection.close();
            if (isChanged == true) {
                out.print("<script type='text/javascript'>alert('successfully changed');"
                        + "document.location.href='hotel-info.jsp';</script>");
            }
            else {
                out.print("<script type='text/javascript'>alert('no change');"
                        + "document.location.href='hotel-info.jsp';</script>");
            }
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMddhhmmss");
        Calendar curday = Calendar.getInstance();
        java.util.Date currentday = curday.getTime();
        String operate_time = "'" + simpleDateFormat1.format(currentday)+"'";
        String idL = "'" + simpleDateFormat2.format(currentday) + "L"+SignIn.idH+"'";
        newHotelName = request.getParameter("hotelName");
        newHotelLocation = request.getParameter("hotelLocation");
        newHotelFacilities = request.getParameter("hotelFacilities");
        newHotelContact = request.getParameter("hotelContact");
        newHotelStar = request.getParameter("hotelStar");
        sqlChangeName = "UPDATE hotel SET nameH = '" + newHotelName + "' WHERE idH = '" + SignIn.idH + "';";
        sqlChangeLocation = "UPDATE hotel SET location = '" + newHotelLocation + "' WHERE idH = '" + SignIn.idH + "';";
        sqlChangeFacilities = "UPDATE hotel SET facility = '" + newHotelFacilities + "' WHERE idH = '" + SignIn.idH + "';";
        sqlChangeContact = "UPDATE hotel SET contact = '" + newHotelContact + "' WHERE idH = '" + SignIn.idH + "';";
        sqlChangeStar = "UPDATE hotel SET star = " + newHotelStar + " WHERE idH = '" + SignIn.idH + "';";
        String sql4 = "insert into log values("+idL+",'"+SignIn.idH+"','"+SignIn.idS+"','"+"none"+"',"+operate_time+","+"'modify hotel')";
        // Database
        try {
            //驱动程序名 
            String driverName="com.mysql.jdbc.Driver"; 
            //数据库用户名 
            String userName="txsing"; 
            //密码 
            String userPasswd="scse1196"; 
            //数据库名 
            String dbName="test"; 
            //表名 
            String tableName="hotel"; 
            //联结字符串 
            String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd; 
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection=DriverManager.getConnection(url); 
            statement = connection.createStatement(); 
            if (newHotelName.equals(""))
            {
            } else { 
                statement.executeUpdate(sqlChangeName);
                isChanged = true;
            }
            if (newHotelLocation.equals(""))
            {
            } else { 
                statement.executeUpdate(sqlChangeLocation);
                isChanged = true;
            }
            if (newHotelFacilities.equals(""))
            {
            } else { 
                statement.executeUpdate(sqlChangeFacilities);
                isChanged = true;
            }
            if (newHotelContact.equals(""))
            {
            } else { 
                statement.executeUpdate(sqlChangeContact);
                isChanged = true;
            }
            if (newHotelStar.equals("unchanged"))
            {
            } else { 
                statement.executeUpdate(sqlChangeStar);
                isChanged = true;
            }
            statement.executeUpdate(sql4);
            processRequest(request, response);
        } catch (Exception e) {
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try {
             processRequest(request, response);
         } catch (SQLException ex) {
             Logger.getLogger(ModifyHotel.class.getName()).log(Level.SEVERE, null, ex);
         }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
