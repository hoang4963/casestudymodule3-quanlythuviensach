//package com.example;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//import java.sql.SQLException;
//
//@WebServlet(name = "BorrowerBookServlet", value = "/BorrowerBookServlet")
//public class BorrowerBookServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action == null) {
//            action = "";
//        }
//
//        try {
//            switch (action) {
//                case "create":
//                    showNewBorrower(request, response);
//                    break;
//                case "edit":
//                    showEditBorrower(request, response);
//                    break;
//                case "delete":
//                    deleteBorrower(request, response);
//                    break;
//                default:
//                    listBorrower(request, response);
//                    break;
//            }
//        } catch (SQLException ex) {
//            throw new ServletException(ex);
//        }
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//}
