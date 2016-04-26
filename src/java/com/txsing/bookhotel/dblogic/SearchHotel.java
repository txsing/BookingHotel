package com.txsing.bookhotel.dblogic;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author root
 */
public class SearchHotel extends HttpServlet {
    String sql;
    public static String checkInString;
    public static String checkOutString;
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd MMM, yy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd");

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
            response.sendRedirect("choose-hotel.jsp");
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
        String hotelDescription = request.getParameter("hotelDescription");
        checkInString = request.getParameter("checkIn");
        Date checkIn;
        try {
            checkIn = simpleDateFormat1.parse(checkInString);
            checkInString = simpleDateFormat2.format(checkIn);
        } catch (ParseException ex) {
            Logger.getLogger(SearchHotel.class.getName()).log(Level.SEVERE, null, ex);
        }
//        checkInString = simpleDateFormat2.format(checkIn);
        checkOutString = request.getParameter("checkOut");
        try {
            Date checkOut = simpleDateFormat1.parse(checkOutString);
            checkOutString = simpleDateFormat2.format(checkOut);
        } catch (ParseException ex) {
            Logger.getLogger(SearchHotel.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql1 = "select * FROM hotels where nameH like '%"
                + hotelDescription + "%'";
        String sql2 = "select * FROM hotels where location like '%"
                + hotelDescription + "%'";
        sql = sql1 + " UNION " + sql2;
        request.getSession().setAttribute("sql", sql);
        request.getSession().setAttribute("check_in", checkInString);
        request.getSession().setAttribute("check_out", checkOutString);

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
