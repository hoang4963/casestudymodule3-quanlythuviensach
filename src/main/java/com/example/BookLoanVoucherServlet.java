package com.example;

import DAO.bookloanvoucher.BookLoanVoucherDAO;
import DAO.borrowerbook.BorrowerBookDAO;
import models.BookLoanVoucher;
import models.BorrowerBook;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "BookLoanVoucherServlet", value = "/BookLoanVoucherServlet")
public class BookLoanVoucherServlet extends HttpServlet {
    private BookLoanVoucherDAO bookLoanVoucherDAO;
    public void init() {
        bookLoanVoucherDAO = new BookLoanVoucherDAO();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "create":
                    showNewBookLoanVoucher(request, response);
                    break;
                case "edit":
                    showEditBookLoanVoucher(request, response);
                    break;
                case "delete":
                    deleteBookLoanVoucher(request, response);
                    break;
                default:
                    listBookLoanVoucher(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertBookLoanVoucher(request, response);
                    break;
                case "edit":
                    updateBookLoanVoucher(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void showNewBookLoanVoucher(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookloanvoucher/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void showEditBookLoanVoucher(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        BookLoanVoucher existingBookLoanVoucher = bookLoanVoucherDAO.selectBookLoanVoucher(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookloanvoucher/edit.jsp");
        request.setAttribute("bookLoanVoucher", existingBookLoanVoucher);
        dispatcher.forward(request, response);
    }
    private void listBookLoanVoucher(HttpServletRequest request, HttpServletResponse response) {
        List<BookLoanVoucher> listBookLoanVoucher = bookLoanVoucherDAO.selectAllBookLoanVoucher();
        request.setAttribute("listBorrowerBook", listBookLoanVoucher);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookloanvoucher/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void insertBookLoanVoucher(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String bookLoanVoucherStatus = request.getParameter("status");
        String borrowerID = request.getParameter("borrower_id");
        int bookAmount = Integer.parseInt(request.getParameter("bookamount"));
        String bookLoanVoucherNote = request.getParameter("note");
        BookLoanVoucher newBookLoanVoucher = new BookLoanVoucher(bookLoanVoucherStatus,borrowerID, bookAmount, bookLoanVoucherNote);
        bookLoanVoucherDAO.insertBookLoanVoucher(newBookLoanVoucher);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookloanvoucher/create.jsp");
        dispatcher.forward(request, response);
    }
    private void updateBookLoanVoucher(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int bookLoanVoucherId = Integer.parseInt(request.getParameter("id"));
        String bookLoanVoucherStatus = request.getParameter("status");
        String borrowerID = request.getParameter("borrower_id");
        int bookAmount = Integer.parseInt(request.getParameter("bookamount"));
        String bookLoanVoucherNote = request.getParameter("note");
        BookLoanVoucher bookLoanVoucher = new BookLoanVoucher(bookLoanVoucherId, bookLoanVoucherStatus, borrowerID, bookAmount, bookLoanVoucherNote);
        bookLoanVoucherDAO.updateBookLoanVoucher(bookLoanVoucher);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookloanvoucher/edit.jsp");
        dispatcher.forward(request, response);
    }
    private void deleteBookLoanVoucher(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        bookLoanVoucherDAO.deleteBookLoanVoucher(id);
        List<BookLoanVoucher> listBookLoanVoucher = bookLoanVoucherDAO.selectAllBookLoanVoucher();
        request.setAttribute("listBookLoanVoucher", listBookLoanVoucher);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookloanvoucher/list.jsp");
        dispatcher.forward(request, response);
    }
}
