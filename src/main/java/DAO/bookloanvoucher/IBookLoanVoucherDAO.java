package DAO.bookloanvoucher;

import models.BookLoanVoucher;

import java.sql.SQLException;
import java.util.List;

public interface IBookLoanVoucherDAO {
    List<BookLoanVoucher> findAll();
    void addStatusBookLoanVoucher(BookLoanVoucher bookLoanVoucher) throws SQLException;
    public boolean updateBookLoanVoucher(BookLoanVoucher bookLoanVoucher) throws SQLException;
}
