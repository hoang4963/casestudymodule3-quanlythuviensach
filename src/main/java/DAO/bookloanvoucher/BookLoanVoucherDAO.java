package DAO.bookloanvoucher;

import connection.ConnectionDB;
import models.BookLoanVoucher;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookLoanVoucherDAO implements IBookLoanVoucherDAO {
    private static final String INSERT_BOOK_LOAN_VOUCHER_SQL = "INSERT INTO bookloanvoucher (loanvoucherId, status, borrower_id, bookamount, note) VALUES (?,?,?,?,?)";
    private static final String SELECT_BOOK_LOAN_VOUCHER_BY_ID = "select * from bookloanvoucher where id =?";
    private static final String SELECT_ALL_BOOK_LOAN_VOUCHER = "select * from bookloanvoucher";
    private static final String DELETE_BOOK_LOAN_VOUCHER_SQL = "delete from bookloanvoucher where id = ?";
    private static final String UPDATE_BOOK_LOAN_VOUCHER_SQL = "update bookloanvoucher set status = ?, borrower_id = ?, note = ?  where id = ?";
    public BookLoanVoucherDAO() {
    }
    @Override
    public boolean deleteBookLoanVoucher(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BOOK_LOAN_VOUCHER_SQL)) {
            System.out.println(preparedStatement);
            preparedStatement.setInt(1, id);
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public BookLoanVoucher selectBookLoanVoucher(int iD) {
        BookLoanVoucher bookLoanVoucher = null;
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BOOK_LOAN_VOUCHER_BY_ID)) {
            preparedStatement.setInt(1, iD);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String bookLoanVoucherId = rs.getString("loanvoucherId");
                String bookLoanVoucherStatus = rs.getString("status");
                String borrowerID = rs.getString("borrower_id");
                int bookAmount = rs.getInt("bookamount");
                String bookLoanVoucherNote = rs.getString("note");
                bookLoanVoucher = new BookLoanVoucher(bookLoanVoucherId, bookLoanVoucherStatus, borrowerID);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return bookLoanVoucher;
    }

    @Override
    public void insertBookLoanVoucher(BookLoanVoucher bookLoanVoucher) throws SQLException {
        System.out.println(INSERT_BOOK_LOAN_VOUCHER_SQL);
        try (Connection connection = ConnectionDB.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOK_LOAN_VOUCHER_SQL)) {
            preparedStatement.setString(1, bookLoanVoucher.getBookLoanVoucherId());
            preparedStatement.setString(2, bookLoanVoucher.getBookLoanVoucherStatus());
            preparedStatement.setString(3, bookLoanVoucher.getBorrowerID());
            preparedStatement.setInt(4, bookLoanVoucher.getBookAmount());
            preparedStatement.setString(5, bookLoanVoucher.getBookLoanVoucherNote());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }
    }

    @Override
    public boolean updateBookLoanVoucher(BookLoanVoucher bookLoanVoucher) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BOOK_LOAN_VOUCHER_SQL)) {
            preparedStatement.setString(1, bookLoanVoucher.getBookLoanVoucherStatus());
            preparedStatement.setString(2, bookLoanVoucher.getBorrowerID());
            preparedStatement.setString(3, bookLoanVoucher.getBookLoanVoucherNote());
            preparedStatement.setInt(4, bookLoanVoucher.getId());
            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public List<BookLoanVoucher> selectAllBookLoanVoucher() {
        List<BookLoanVoucher> bookLoanVouchers = new ArrayList<>();
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BOOK_LOAN_VOUCHER)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String bookLoanVoucherId = rs.getString("loanvoucherId");
                String bookLoanVoucherStatus = rs.getString("status");
                String borrowerID = rs.getString("borrower_id");
                int bookAmount = rs.getInt("bookamount");
                String bookLoanVoucherNote = rs.getString("note");
                bookLoanVouchers.add(new BookLoanVoucher(bookLoanVoucherId, bookLoanVoucherStatus, borrowerID));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return bookLoanVouchers;
    }
}
