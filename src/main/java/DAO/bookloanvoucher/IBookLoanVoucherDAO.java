package DAO.bookloanvoucher;

import models.BookLoanVoucher;
import models.Borrower;
import models.BorrowerBook;
import models.BorrowerInfo;

import java.sql.SQLException;
import java.util.List;

public interface IBookLoanVoucherDAO {
    public boolean deleteBookLoanVoucher(int id) throws SQLException;
    public BookLoanVoucher selectBookLoanVoucher(int id);
    public void insertBookLoanVoucher(BookLoanVoucher bookLoanVoucher) throws SQLException;
    public boolean updateBookLoanVoucher(BookLoanVoucher bookLoanVoucher) throws SQLException;
    public List<BookLoanVoucher> selectAllBookLoanVoucher();
    public List<BookLoanVoucher> searchBookLoanVouchers(String searchBookLoanVouchers);

    public List<BorrowerInfo> selectBorrowerInfo(String borrower);
}
