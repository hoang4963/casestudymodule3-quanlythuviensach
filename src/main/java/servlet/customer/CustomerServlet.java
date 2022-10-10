package servlet.customer;

import DAO.customer.CustomerDAO;
import models.Borrower;
import connection.ConnectionDB;
import models.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customers")
public class CustomerServlet extends HttpServlet {
    private CustomerDAO customerDAO;

    public void init() {
        customerDAO = new CustomerDAO();
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
                    deleteCustomer(request, response);
                    break;
                case "searchByName":
                    searchByName(request,response);
                    break;
                default:
                    listCustomer(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void searchByName(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("searchByName");
        List<Customer> searchCustomer;
        searchCustomer = customerDAO.searchByName(name);
        request.setAttribute("searchCustomer", searchCustomer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/search.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/createCustomer.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer existingCustomer = customerDAO.selectCustomer(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/editCustomer.jsp");
        request.setAttribute("customer", existingCustomer);
        dispatcher.forward(request, response);

    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> listCustomer = customerDAO.selectAllCustomers();
        request.setAttribute("listCustomer", listCustomer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/listCustomer.jsp");
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
                    insertCustomer(request, response);
                    break;
                case "edit":
                    updateCustomer(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void insertCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        Customer newCustomer;
        String name = request.getParameter("name");
        String customerId = request.getParameter("customerId");
        String email = request.getParameter("email");
        String role_Id = request.getParameter("role_Id");
        String password = request.getParameter("password");
        newCustomer = new Customer(customerId, name, email, role_Id, password);

        customerDAO.insertCustomer(newCustomer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/createCustomer.jsp");
        request.setAttribute("status", "success");

        dispatcher.forward(request, response);
//        String name = request.getParameter("name");
//        String customerid = request.getParameter("CustomerId");
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//        String roleid = request.getParameter("roleId");
//        RequestDispatcher dispatcher = null;
//        Connection con = null;
//        try {
//            con = ConnectionDB.getConnection();
//            PreparedStatement pst = con.prepareStatement("insert * from `quanlythuviensach`.`customer`(customerId,name,email,password,role_id) values (?,?,?,?,?)");
//            pst.setString(1, customerid);
//            pst.setString(2, name);
//            pst.setString(3, email);
//            pst.setString(4, password);
//            pst.setString(5, roleid);
//            int rowCount = pst.executeUpdate();
//            dispatcher = request.getRequestDispatcher("customer/createCustomer.jsp");
//            if (rowCount > 0) {
//                request.setAttribute("status", "success");
//            } else {
//                request.setAttribute("status", "failed");
//            }
//            dispatcher.forward(request,response);
//        }catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                con.close();
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
//        }
//
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String customerid = request.getParameter("customerId");
        String name = request.getParameter("name");
        Date birthday = Date.valueOf(request.getParameter("birthday"));
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String avatar = request.getParameter("avatar");
        String roleid = request.getParameter("roleId");
        Customer customer = new Customer(id, customerid, name, birthday, email, phone, avatar, roleid);
        customerDAO.updateCustomer(customer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/editCustomer.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        customerDAO.deleteCustomer(id);
        List<Customer> listCustomer = customerDAO.selectAllCustomers();
        request.setAttribute("listCustomer", listCustomer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/listCustomer.jsp");
        dispatcher.forward(request, response);
    }
}
