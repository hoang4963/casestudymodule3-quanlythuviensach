package DAO.borrower;


import connection.ConnectionDB;
import models.Borrower;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BorrowerDAO implements IBorrowerDAO {
    private static final String INSERT_BORROWER_SQL = "INSERT INTO borrower (borrowerId,name,birthday,address,customer_id) VALUES (?,?,?,?,?);";
    private static final String SELECT_BORROWER_BY_ID = "select * from borrower where id =?;";
    private static final String SELECT_ALL_BORROWERS = "select * from borrower;";
    private static final String DELETE_BORROWERS_SQL = "delete from borrower where id = ?;";
    private static final String UPDATE_BORROWERS_SQL = "update borrower set borrowerId = ?, name = ?, birthday = ?, address =?, customer_id = ? where id = ?;";

    private static final String SEARCH_BORROWERS_BY_NAME = "select * from borrower where borrower.name like ?;";

    public BorrowerDAO() {
    }

    @Override
    public void insertBorrower(Borrower borrower) throws SQLException {
        System.out.println(INSERT_BORROWER_SQL);
        try (Connection connection = ConnectionDB.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BORROWER_SQL)) {
            preparedStatement.setString(1, borrower.getBorrowerId());
            preparedStatement.setString(2, borrower.getBorrowerName());
            preparedStatement.setDate(3,borrower.getBorrowerBirthDay());
            preparedStatement.setString(4,borrower.getBorrowerAddress());
            preparedStatement.setString(5,borrower.getCustomerId());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }
        catch (SQLException e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    public Borrower selectBorrower(int id) {
        Borrower borrower = null;
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BORROWER_BY_ID)) {
            preparedStatement.setInt(1,id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                String borrowerId = rs.getString("borrowerId");
                String borrowerName = rs.getString("name");
                Date birthday = rs.getDate("birthday");
                String address = rs.getString("address");
                String customerId = rs.getString("customerId");
                borrower = new Borrower(id,borrowerId,borrowerName,birthday,address,customerId);
            }
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        return borrower;
    }

    @Override
    public List<Borrower> selectAllBorrowers() {
        List<Borrower> borrowers = new ArrayList<>();
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BORROWERS)){
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String borrowerId = rs.getString("borrowerId");
                String borrowerName = rs.getString("name");
                Date birthday = rs.getDate("birthday");
                String address = rs.getString("address");
                String customerId = rs.getString("customer_id");
                borrowers.add(new Borrower(id,borrowerId,borrowerName,birthday,address,customerId));
            }
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        return borrowers;
    }

    @Override
    public boolean deleteBorrower(int id) throws SQLException {
        boolean rowDeleted;
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BORROWERS_SQL)){
            System.out.println(preparedStatement);
            preparedStatement.setInt(1,id);
            rowDeleted = preparedStatement.executeUpdate() >0;
        }
        return rowDeleted;
    }

    @Override
    public boolean updateBorrower(Borrower borrower) throws SQLException {
        boolean rowUpdated;
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BORROWERS_SQL)){
            preparedStatement.setString(1,borrower.getBorrowerId());
            preparedStatement.setString(2,borrower.getBorrowerName());
            preparedStatement.setDate(3,borrower.getBorrowerBirthDay());
            preparedStatement.setString(4,borrower.getBorrowerAddress());
            preparedStatement.setString(5,borrower.getCustomerId());
            preparedStatement.setInt(6,borrower.getId());
            rowUpdated = preparedStatement.executeUpdate() >0;
        }
        return rowUpdated;
    }

    @Override
    public List<Borrower> searchByName(String name) {
        List<Borrower> borrowers = new ArrayList<>();
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_BORROWERS_BY_NAME)){
            System.out.println(preparedStatement);
            preparedStatement.setString(1,"%" + name + "%");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String borrowerId = rs.getString("borrowerId");
                String borrowerName = rs.getString("name");
                Date birthday = rs.getDate("birthday");
                String address = rs.getString("address");
                String customerId = rs.getString("customer_id");
                borrowers.add(new Borrower(id,borrowerId,borrowerName,birthday,address,customerId));
            }
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        return borrowers;
    }
}