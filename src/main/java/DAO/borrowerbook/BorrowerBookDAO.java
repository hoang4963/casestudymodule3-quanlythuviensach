package DAO.borrowerbook;

import connection.ConnectionDB;
import models.BorrowerBook;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class BorrowerBookDAO implements IBorrowerBookDAO {


    private static final String INSERT_BORROWER_BOOK_SQL = "INSERT INTO borrowedbook (voucher_id, book_id, loandate, returndate) VALUES (?,?,?,?)";
    private static final String SELECT_BORROWER_BOOK_BY_ID = "select * from borrowedbook where id =?";
    private static final String SELECT_ALL_BORROWER_BOOK = "select * from borrowedbook";
    private static final String DELETE_BORROWER_BOOK_SQL = "delete from borrowedbook where id = ?";
    private static final String UPDATE_BORROWER_BOOK_SQL = "update borrowedbook set voucher_id = ?, book_id = ?, loandate = ?, returndate = ?  where id = ?";

    public BorrowerBookDAO() {
    }

    @Override
    public boolean deleteBorrowerBook(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BORROWER_BOOK_SQL)) {
            System.out.println(preparedStatement);
            preparedStatement.setInt(1, id);
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public BorrowerBook selectBorrowerBook(int id) {
        BorrowerBook borrowerBook = null;
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BORROWER_BOOK_BY_ID)) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int borrowerBookId = rs.getInt("id");
                String loanVoucherId = rs.getString("voucher_id");
                String bookId = rs.getString("book_id");
                Date loanDate = rs.getDate("loandate");
                Date returnDate = rs.getDate("returndate");
                borrowerBook = new BorrowerBook(borrowerBookId, loanVoucherId, bookId, loanDate, returnDate);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return borrowerBook;
    }

    @Override
    public void insertBorrowerBook(BorrowerBook borrowerBook) throws SQLException {
        System.out.println(INSERT_BORROWER_BOOK_SQL);
        try (Connection connection = ConnectionDB.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BORROWER_BOOK_SQL)) {
            preparedStatement.setString(1, borrowerBook.getLoanVoucherId());
            preparedStatement.setString(2, borrowerBook.getBookId());
            preparedStatement.setDate(3, borrowerBook.getLoanDate());
            preparedStatement.setDate(4, borrowerBook.getReturnDate());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }

    }

    @Override
    public boolean updateBorrowerBook(BorrowerBook borrowerBook) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BORROWER_BOOK_SQL)) {
            preparedStatement.setString(1, borrowerBook.getLoanVoucherId());
            preparedStatement.setString(2, borrowerBook.getBookId());
            preparedStatement.setDate(3, borrowerBook.getLoanDate());
            preparedStatement.setDate(4, borrowerBook.getReturnDate());
            preparedStatement.setInt(5, borrowerBook.getBorrowerBookId());
            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public List<BorrowerBook> selectAllBorrowerBook() {
        List<BorrowerBook> borrowerBooks = new ArrayList<>();
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BORROWER_BOOK)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int borrowerBookId = rs.getInt("id");
                String loanVoucherId = rs.getString("voucher_id");
                String bookId = rs.getString("book_id");
                Date loanDate = rs.getDate("loandate");
                Date returnDate = rs.getDate("returndate");
                borrowerBooks.add(new BorrowerBook(borrowerBookId, loanVoucherId, bookId, loanDate, returnDate));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return borrowerBooks;
    }

//    public static void main(String[] args) {
//        List<BorrowerBook> borrowerBooks = new BorrowerBookDAO().selectAllBorrowerBook();
//        System.out.println(borrowerBooks.toString());
//
//    }
}