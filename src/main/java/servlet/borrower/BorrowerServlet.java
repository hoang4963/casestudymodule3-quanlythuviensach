package servlet.borrower;

import DAO.borrower.BorrowerDAO;
import models.Borrower;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "BorrowerServlet", urlPatterns = "/borrowers")
public class BorrowerServlet extends HttpServlet {
    private BorrowerDAO borrowerDAO;
    public void init() {
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
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteBorrower(request, response);
                    break;
                case "searchByName":
                    searchByName(request,response);
                    break;
                default:
                    listBorrwer(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void searchByName(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("searchByName");
        List<Borrower> searchBorrowers;
        searchBorrowers = borrowerDAO.searchByName(name);
        request.setAttribute("searchBorrowers", searchBorrowers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrower/search.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrower/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Borrower existingBorrower = borrowerDAO.selectBorrower(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrower/edit.jsp");
        request.setAttribute("borrower", existingBorrower);
        dispatcher.forward(request, response);

    }

    private void listBorrwer(HttpServletRequest request, HttpServletResponse response) {
        List<Borrower> listBorrower = borrowerDAO.selectAllBorrowers();
        request.setAttribute("listBorrower", listBorrower);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrower/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
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
                    insertBorrower(request, response);
                    break;
                case "edit":
                    updateBorrower(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void insertBorrower(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        Borrower newBorrower;
        String borrowerid = request.getParameter("borrowerId");
        String name = request.getParameter("name");
        Date birthday = Date.valueOf(request.getParameter("birthday"));
        String address = request.getParameter("address");
        String customerId = request.getParameter("customerId");
        if (Objects.equals(customerId, "")){
            newBorrower = new Borrower(borrowerid,name,birthday,address);
        }
        else {
            newBorrower = new Borrower(borrowerid,name,birthday,address,customerId);
        }

        borrowerDAO.insertBorrower(newBorrower);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrower/create.jsp");
        dispatcher.forward(request, response);
    }
    private void updateBorrower(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        Borrower borrower;
        int id =Integer.parseInt(request.getParameter("id"));
        String borrowerid = request.getParameter("borrowerId");
        String name = request.getParameter("name");
        Date birthday = Date.valueOf(request.getParameter("birthday"));
        String address = request.getParameter("address");
        String customerId = request.getParameter("customerId");
        borrower = new Borrower(id,borrowerid,name,birthday,address,customerId);
        borrowerDAO.updateBorrower(borrower);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrower/edit.jsp");
        dispatcher.forward(request, response);
    }
    private void deleteBorrower(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        borrowerDAO.deleteBorrower(id);
        List<Borrower> listBorrower = borrowerDAO.selectAllBorrowers();
        request.setAttribute("listBorrower", listBorrower);
        RequestDispatcher dispatcher = request.getRequestDispatcher("borrower/list.jsp");
        dispatcher.forward(request, response);
    }
}

