package DAO.borrowerbook;

import connection.ConnectionDB;
import models.BorrowerBook;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class BorrowerBookDAO implements IBorrowerBookDAO {


    private static final String INSERT_BORROWER_BOOK_SQL = "INSERT INTO BORROWEBOOK (voucher_id, book_id, loandate, returndate) VALUES (?,?);";
    private static final String SELECT_BORROWER_BOOK_BY_ID = "select * from borrowerbook where id =?";
    private static final String SELECT_ALL_BORROWER_BOOK = "select * from borrowerbook";
    private static final String DELETE_BORROWER_BOOK_SQL = "delete from borrowerbook where id = ?;";
    private static final String UPDATE_BORROWER_BOOK_SQL = "update borrowerbook set id = ?, name = ? where id = ?;";

    public BorrowerBookDAO() {
    }

    @Override
    public boolean deleteBorrower(int id) throws SQLException {
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
                int borrowerBookId = rs.getInt("borrowerbookid");
                int loanVoucherId = rs.getInt("loanvoucherid");
                int bookId = rs.getInt("bookid");
                Date loanDate = rs.getDate("loandateid");
                Date returnDate = rs.getDate("returndate");
                borrowerBook = new BorrowerBook(borrowerBookId, loanVoucherId, bookId, loanDate, returnDate);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return borrowerBook;
    }

    @Override
    public void insertBorrower(BorrowerBook borrowerBook) throws SQLException {
        System.out.println(INSERT_BORROWER_BOOK_SQL);
        try (Connection connection = ConnectionDB.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BORROWER_BOOK_SQL)) {
            preparedStatement.setInt(1, borrowerBook.getLoanVoucherId());
            preparedStatement.setInt(2, borrowerBook.getBookId());
            preparedStatement.setDate(3, borrowerBook.getLoanDate());
            preparedStatement.setDate(4, borrowerBook.getReturnDate());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }

    }

    @Override
    public boolean updateBorrower(BorrowerBook BorrowerBook) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BORROWER_BOOK_SQL)) {
            preparedStatement.setInt(1, BorrowerBook.getLoanVoucherId());
            preparedStatement.setInt(2, BorrowerBook.getBookId());
            preparedStatement.setDate(3, BorrowerBook.getLoanDate());
            preparedStatement.setDate(4, BorrowerBook.getReturnDate());
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
                int borrowerbookid = rs.getInt("borrowerbookid");
                int loanVoucherId = rs.getInt("loanvoucherid");
                int bookId = rs.getInt("bookid");
                Date loanDate = rs.getDate("loandateid");
                Date returnDate = rs.getDate("returndate");
                borrowerBooks.add(new BorrowerBook(borrowerbookid, loanVoucherId, bookId, loanDate, returnDate));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return borrowerBooks;
    }
}