/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.txsing.dblogic;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author root
 */
public class ManageIndent extends HttpServlet {
    public static String idO;
    String idO1;

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMddhhmmss");
        Calendar curday = Calendar.getInstance();
        Date currentday = curday.getTime();
        String operate_time = "'" + simpleDateFormat1.format(currentday)+"'";
        String idL = "'" + simpleDateFormat2.format(currentday) + "L"+SignIn.idH+"'";
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            if(idO1.endsWith("1")){
                out.print(idO);
            }else{
                String sql2 = "update room set status = 'available' where idH = '"+SignIn.idH+"' and idR in"+
                        "(select idR from indent where idO = '"+idO+"')";
                String sql3 = "delete from user where idU in (select idU from indent where idO = '"+idO+"')"; 
                String sql4 = "insert into log values("+idL+",'"+SignIn.idH+"','"+SignIn.idS+"','"+idO+"',"+operate_time+","+"'cancel indent')";
//                request.getSession().setAttribute("sql2", sql2);
//                request.getSession().setAttribute("sql3", sql3);  
//                request.getSession().setAttribute("sql4", sql4);  
                String userName = "txsing";
                String userPasswd = "scse1196";
                String dbName = "test";
                String url = "jdbc:mysql://localhost/" + dbName + "?user=" + userName + "&password=" + userPasswd;
                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                } catch (InstantiationException ex) {
                    Logger.getLogger(ManageIndent.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(ManageIndent.class.getName()).log(Level.SEVERE, null, ex);
                }
                Connection connection = DriverManager.getConnection(url);
                Statement statement = connection.createStatement();
                statement.executeUpdate(sql2);
                statement.executeUpdate(sql3);
                statement.executeUpdate(sql4);
 //               response.sendRedirect("CancelIndent.jsp");
                out.print("<script type='text/javascript'>alert('successfully changed');"
                        + "document.location.href='edit-orders.jsp';</script>");
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
        idO1 = request.getParameter("idO");
        idO=idO1.substring(0, idO1.length()-1);
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ManageIndent.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManageIndent.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ManageIndent.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManageIndent.class.getName()).log(Level.SEVERE, null, ex);
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
