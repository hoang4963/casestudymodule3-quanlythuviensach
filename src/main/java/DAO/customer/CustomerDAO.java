package DAO.customer;

import connection.ConnectionDB;
import models.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO implements ICustomerDAO{
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer (customerId,name,birthday,email,phone,avatar,role_id) VALUES (?,?,?,?,?,?,?);";
    private static final String SELECT_CUSTOMER_BY_ID = "select * from customer where id =?";
    private static final String SELECT_ALL_CUSTOMERS = "select * from customer";
    private static final String DELETE_CUSTOMERS_SQL = "delete from customer where id = ?;";
    private static final String UPDATE_CUSTOMERS_SQL = "update customer set customerId = ?, name = ?, birthday = ?, email = ?, phone = ?, avatar = ?, role_id = ? where id = ?;";



    public CustomerDAO() {
    }

    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        System.out.println(INSERT_CUSTOMER_SQL);
        try (Connection connection = ConnectionDB.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL)) {
            preparedStatement.setString(1, customer.getCustomerId());
            preparedStatement.setString(2, customer.getCustomerName());
            preparedStatement.setDate(3,customer.getCustomerBirthday());
            preparedStatement.setString(4,customer.getCustomerEmail());
            preparedStatement.setInt(5,customer.getCustomerPhone());
            preparedStatement.setString(6,customer.getCustomerAvatar());
            preparedStatement.setString(7,customer.getCustomerRoleId());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }
        catch (SQLException e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    public Customer selectCustomer(int id) {
        Customer customer = null;
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID)) {
            preparedStatement.setInt(1,id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                String customerId = rs.getString("customerId");
                String customerName = rs.getString("name");
                Date birthday = rs.getDate("birthday");
                String email = rs.getString("email");
                int phone = rs.getInt("phone");
                String avatar = rs.getString("avatar");
                String roleid = rs.getString("role_id");
                customer = new Customer(id,customerId,customerName,birthday,email,phone,avatar,roleid);
            }
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        return customer;
    }

    @Override
    public List<Customer> selectAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMERS)){
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String customerId = rs.getString("customerId");
                String name = rs.getString("name");
                Date birthday = rs.getDate("birthday");
                String email = rs.getString("email");
                int phone = rs.getInt("phone");
                String avatar = rs.getString("avatar");
                String roleid = rs.getString("role_id");
                customers.add(new Customer(id,customerId,name,birthday,email,phone,avatar,roleid));
            }
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        return customers;
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        boolean rowDeleted;
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CUSTOMERS_SQL)){
            System.out.println(preparedStatement);
            preparedStatement.setInt(1,id);
            rowDeleted = preparedStatement.executeUpdate() >0;
        }
        return rowDeleted;
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        boolean rowUpdated;
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMERS_SQL)){
            preparedStatement.setString(1,customer.getCustomerId());
            preparedStatement.setString(2,customer.getCustomerName());
            preparedStatement.setDate(3,customer.getCustomerBirthday());
            preparedStatement.setString(4,customer.getCustomerEmail());
            preparedStatement.setInt(5,customer.getCustomerPhone());
            preparedStatement.setString(6,customer.getCustomerAvatar());
            preparedStatement.setString(7,customer.getCustomerRoleId());
            preparedStatement.setInt(8,customer.getId());
            rowUpdated = preparedStatement.executeUpdate() >0;
        }
        return rowUpdated;
    }
}
