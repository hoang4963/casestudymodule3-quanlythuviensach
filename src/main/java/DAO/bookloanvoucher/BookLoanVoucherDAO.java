//package DAO.bookloanvoucher;
//
//import models.BookLoanVoucher;
//
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//public class BookLoanVoucherDAO implements IBookLoanVoucherDAO{
//    private  static Map<Integer, BookLoanVoucher> bookLoanVouchers;
//    static {
//        bookLoanVouchers = new HashMap<>();
//    }
//    @Override
//    public List<BookLoanVoucher> findAll() {
//        return new ArrayList<>(bookLoanVouchers.values());
//    }
//
//    @Override
//    public void  BookLoanVoucher(BookLoanVoucher bookLoanVoucher) throws SQLException {
//
//    }
//
//    @Override
//    public boolean updateBookLoanVoucher(BookLoanVoucher bookLoanVoucher) throws SQLException {
//        return false;
//    }
//}
