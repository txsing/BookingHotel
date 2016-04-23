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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 *
 * @author root
 */
@WebServlet(name = "CreateIndent", urlPatterns = {"/CreateIndent"})
public class CreateIndent extends HttpServlet {

    String sql1;
    String sql2;
    String sql3;
    String sql4;

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
            /* TODO output your page here. You may use following sample code. */
//            out.print(sql4);
            response.sendRedirect("order.jsp");

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
//        System.out.println("1111111111111111111111111111111111111111");
        SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMddhhmmss");
        Calendar curday = Calendar.getInstance();
        Date currentday = curday.getTime();
        String idR1 = "'" + ChooseRoom.roomidString + "'";
        String idH1 = "'" + ChooseHotel.hotelIdString + "'";
        String idO1 = "'" + simpleDateFormat2.format(currentday) + "O'";
        String check_in = "'" + SearchHotel.checkInString + "'" + ",";
        String check_out = "'" + SearchHotel.checkOutString + "'" + ",";
        String create_time = "'" + simpleDateFormat1.format(currentday) + "'";
        String idH = "'" + ChooseHotel.hotelIdString + "'" + ",";
        String idR = "'" + ChooseRoom.roomidString + "'" + ",";
        String idO = "'" + simpleDateFormat2.format(currentday) + "O',";
        String idU = "'" + simpleDateFormat2.format(currentday) + "U',";
        String ageString = request.getParameter("age") + ",";
        String hpnumber = request.getParameter("hp") + ",";
        String username = "'" + request.getParameter("name") + "'" + ",";
        String passport = "'" + request.getParameter("passport") + "'" + ",";
        if (passport.equals("'',")) {
            passport = "null,";
        }
        String idcard = "'" + request.getParameter("id") + "'";
        if (idcard.equals("''")) {
            idcard = "null";
        }

        String paraString3 = idU + idO + idR + idH + check_in + check_out + create_time;
        String paraString1 = idU + ageString + hpnumber + username + passport + idcard;
        sql3 = "insert into indent values("
                + paraString3 + ")";

        sql2 = "update room set status = 'unavailable' where idR ="
                + idR1 + " and " + "idH=" + idH1;

        sql1 = "insert into user values ("
                + paraString1 + ")";

        sql4 = "select o.ido, h.nameh, r.size, o.checkin_time,o.checkout_time, r.price\n"
                + "from indent o,hotel h,room r\n"
                + "where o.idH = h.idH and o.idR = r.idR and r.idH = o.idH and o.idO ="
                + idO1;
        request.getSession().setAttribute("sql1", sql1);
        request.getSession().setAttribute("sql2", sql2);
        request.getSession().setAttribute("sql3", sql3);
        request.getSession().setAttribute("sql4", sql4);
//        System.out.println("222222222222222222222222222222222222222222222222222");
        processRequest(request, response);
//        System.out.println("33333333333333333333333333333333333333333333333333333333333");
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
