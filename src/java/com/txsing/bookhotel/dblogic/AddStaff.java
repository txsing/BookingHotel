/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.txsing.dblogic;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author root
 */
public class AddStaff extends HttpServlet {

    Connection connection;
    Statement statement;
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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String name = request.getParameter("name");
            String id = request.getParameter("id");
            String password = request.getParameter("password");
           
            String sql = "insert into staff values('"+id+"','"+name+"','"+password+"','"+SignIn.idH+"')";

            statement.executeUpdate(sql);  
            statement.close();
            connection.close();
            out.print("<script type='text/javascript'>alert('successfully Added');"
                        + "document.location.href='edit-staffs.jsp';</script>");
        } catch(Exception e){
        }
        finally {
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
            try {
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection=DriverManager.getConnection(url); 
            statement = connection.createStatement();   
                        
            
        } catch (Exception e) {
        }
            
        processRequest(request, response);
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
        processRequest(request, response);
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

