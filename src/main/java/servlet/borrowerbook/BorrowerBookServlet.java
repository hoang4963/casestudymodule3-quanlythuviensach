package servlet.borrowerbook;

import DAO.borrowerbook.BorrowerBookDAO;
import DAO.role.RoleDAO;
import models.BorrowerBook;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "BorrowerBookServlet", value = "/BorrowerBookServlet")
public class BorrowerBookServlet extends HttpServlet {
    private BorrowerBookDAO borrowerBookDAO;
    public void init() {
        borrowerBookDAO = new BorrowerBookDAO();
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
                    showNewBorrowerBook(request, response);
                    break;
                case "edit":
                    showEditBorrowerBook(request, response);
                    break;
                case "delete":
                    deleteBorrowerBook(request, response);
                    break;
                default:
                    listBorrowerBook(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void showNewBorrowerBook(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrowerbook/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showEditBorrowerBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        BorrowerBook existingBorrowerBook = borrowerBookDAO.selectBorrowerBook(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrowerbook/edit.jsp");
        request.setAttribute("borrowerBook", existingBorrowerBook);
        dispatcher.forward(request, response);

    }

    private void listBorrowerBook(HttpServletRequest request, HttpServletResponse response) {
        List<BorrowerBook> listBorrowerBook = borrowerBookDAO.selectAllBorrowerBook();
        request.setAttribute("listBorrowerBook", listBorrowerBook);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrowerbook/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
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
                    insertBorrowerBook(request, response);
                    break;
                case "edit":
                    updateBorrowerBook(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void insertBorrowerBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String loanVoucherId = request.getParameter("loanVoucherId");
        String bookId = request.getParameter("bookId");
        Date loanDate = Date.valueOf(request.getParameter("loanDate"));
        Date returnDate = Date.valueOf(request.getParameter("returnDate"));
        BorrowerBook newBorrowerBook = new BorrowerBook(loanVoucherId, bookId,loanDate,returnDate);
        borrowerBookDAO.insertBorrowerBook(newBorrowerBook);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrowerbook/create.jsp");
        dispatcher.forward(request, response);
    }

    private void updateBorrowerBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int borrowerBookId = Integer.parseInt(request.getParameter("id"));
        String loanVoucherId = request.getParameter("loanVoucherId");
        String bookId = request.getParameter("bookId");
        Date loanDate = Date.valueOf(request.getParameter("loanDate"));
        Date returnDate = Date.valueOf(request.getParameter("returnDate"));
        BorrowerBook borrowerBook = new BorrowerBook(borrowerBookId, loanVoucherId, bookId, loanDate, returnDate);
        borrowerBookDAO.updateBorrowerBook(borrowerBook);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrowerbook/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteBorrowerBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        borrowerBookDAO.deleteBorrowerBook(id);
        List<BorrowerBook> listBorrowerBook = borrowerBookDAO.selectAllBorrowerBook();
        request.setAttribute("listBorrowerBook", listBorrowerBook);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrowerbook/list.jsp");
        dispatcher.forward(request, response);
    }
}
