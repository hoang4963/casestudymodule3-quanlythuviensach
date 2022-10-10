package servlet.bookloanvoucher;

import DAO.bookloanvoucher.BookLoanVoucherDAO;
import DAO.borrower.BorrowerDAO;
import models.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "BookLoanVoucherServlet", value = "/BookLoanVoucherServlet")
public class BookLoanVoucherServlet extends HttpServlet {
    private BookLoanVoucherDAO bookLoanVoucherDAO;
    private BorrowerDAO borrowerDAO;
    public void init() {

        bookLoanVoucherDAO = new BookLoanVoucherDAO();
        borrowerDAO = new BorrowerDAO();
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
                case "searchByBookLoanVouchers":
                    searchByBookLoanVouchers(request, response);
                    break;
                case "view":
                    viewBorrowerBook(request, response);
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
        request.setAttribute("bookLoanVoucher", listBookLoanVoucher);
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
        String bookLoanVoucherId = request.getParameter("bookLoanVoucherId");
        String bookLoanVoucherStatus = request.getParameter("bookLoanVoucherStatus");
        String borrowerID = request.getParameter("borrowerID");
        int bookAmount = Integer.parseInt(request.getParameter("bookAmount"));
        String bookLoanVoucherNote = request.getParameter("bookLoanVoucherNote");
        BookLoanVoucher newBookLoanVoucher = new BookLoanVoucher(bookLoanVoucherId, bookLoanVoucherStatus,borrowerID, bookAmount, bookLoanVoucherNote);
        bookLoanVoucherDAO.insertBookLoanVoucher(newBookLoanVoucher);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookloanvoucher/create.jsp");
        dispatcher.forward(request, response);
    }
    private void updateBookLoanVoucher(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String bookLoanVoucherId = request.getParameter("bookLoanVoucherId");
        String bookLoanVoucherStatus = request.getParameter("bookLoanVoucherStatus");
        String borrowerID = request.getParameter("borrowerID");
        int bookAmount = Integer.parseInt(request.getParameter("bookAmount"));
        String bookLoanVoucherNote = request.getParameter("bookLoanVoucherNote");
        BookLoanVoucher bookLoanVoucher = new BookLoanVoucher(id, bookLoanVoucherId, bookLoanVoucherStatus, borrowerID, bookAmount, bookLoanVoucherNote);
        bookLoanVoucherDAO.updateBookLoanVoucher(bookLoanVoucher);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookloanvoucher/edit.jsp");
        dispatcher.forward(request, response);
    }
    private void deleteBookLoanVoucher(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        bookLoanVoucherDAO.deleteBookLoanVoucher(id);
        List<BookLoanVoucher> listBookLoanVoucher = bookLoanVoucherDAO.selectAllBookLoanVoucher();
        request.setAttribute("bookLoanVoucher", listBookLoanVoucher);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookloanvoucher/list.jsp");
        dispatcher.forward(request, response);
    }
    private void searchByBookLoanVouchers(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("searchByBookLoanVouchers");
        List<BookLoanVoucher> searchBookLoanVouchers;
        searchBookLoanVouchers = bookLoanVoucherDAO.searchBookLoanVouchers(name);
        request.setAttribute("searchBookLoanVouchers", searchBookLoanVouchers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookloanvoucher/search.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void viewBorrowerBook(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        String borrowers = request.getParameter("borrowerID");
        List<BorrowerInfo> borrowerInfo = bookLoanVoucherDAO.selectBorrowerInfo(borrowers);
        RequestDispatcher dispatcher;
        if (borrowers == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("borrowers",borrowerInfo);
            dispatcher = request.getRequestDispatcher("bookloanvoucher/view.jsp");
        }
        dispatcher.forward(request,response);
    }
}
