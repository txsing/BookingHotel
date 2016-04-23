/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.txsing.dblogic;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kara
 */
public class SignIn extends HttpServlet {
    String userName;
    String password;
    String sqlIdH;
    Connection connection;
    Statement statement;
    ResultSet rs;
    public static String idH;
    public static String idS;

    public static String getidH() {
        return idH;
    }
    
    public static String getidS() {
        return idS;
    }
    
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
            if (rs.next()) {
                idS = rs.getString(1);
                response.sendRedirect("staff-select.jsp");
            }
            else {
                out.print("<script type='text/javascript'>alert('Signning in failed');"
                        + "document.location.href='sign-in.jsp';</script>");
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
        idH = request.getParameter("idH");
        userName = request.getParameter("userName");
        password = request.getParameter("password");
        sqlIdH = "SELECT * FROM staff WHERE idS = '"+ userName +"' AND password = '"+ password +"' "
                +"AND idH= '"+idH+"';";
        // Database
        try {
            //驱动程序名 
            String driverName="com.mysql.jdbc.Driver"; 
            //数据库用户名 
            String databaseUserName="txsing"; 
            //密码 
            String userPasswd="scse1196"; 
            //数据库名 
            String dbName="test"; 
            //联结字符串 
            String url="jdbc:mysql://localhost/"+dbName+"?user="+databaseUserName+"&password="+userPasswd; 
            Class.forName(driverName).newInstance(); 
            connection=DriverManager.getConnection(url); 
            statement = connection.createStatement(); 
            rs = statement.executeQuery(sqlIdH);
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
            Logger.getLogger(SignIn.class.getName()).log(Level.SEVERE, null, ex);
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