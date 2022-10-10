package DAO.customer;

import models.Borrower;
import models.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerDAO {
    public void insertCustomer(Customer customer) throws SQLException;

    public Customer selectCustomer(int id);

    public List<Customer> selectAllCustomers();

    public boolean deleteCustomer(int id) throws SQLException;

    public boolean updateCustomer(Customer customer) throws SQLException;

    public List<Customer> searchByName(String name);

    public List<Customer> selectAllCustomersDelete();

    public boolean deleteCustomerForever(int id) throws SQLException;

    public boolean restoreCustomer(int id) throws SQLException;
}
