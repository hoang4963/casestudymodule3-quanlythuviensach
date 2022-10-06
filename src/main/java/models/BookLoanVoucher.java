package models;

public class BookLoanVoucher {
    protected int bookLoanVoucherId;
    protected String bookLoanVoucherName;
    protected int borrowerID;
    protected int bookAmount;
    protected int bookLoanVoucherNote;

    public BookLoanVoucher() {
    }

    public BookLoanVoucher(int bookLoanVoucherId, String bookLoanVoucherName, int borrowerID, int bookAmount, int bookLoanVoucherNote) {
        this.bookLoanVoucherId = bookLoanVoucherId;
        this.bookLoanVoucherName = bookLoanVoucherName;
        this.borrowerID = borrowerID;
        this.bookAmount = bookAmount;
        this.bookLoanVoucherNote = bookLoanVoucherNote;
    }

    public BookLoanVoucher(int bookLoanVoucherId, String bookLoanVoucherName, int borrowerID, int bookAmount) {
        this.bookLoanVoucherId = bookLoanVoucherId;
        this.bookLoanVoucherName = bookLoanVoucherName;
        this.borrowerID = borrowerID;
        this.bookAmount = bookAmount;
    }

    public int getBookLoanVoucherId() {
        return bookLoanVoucherId;
    }

    public void setBookLoanVoucherId(int bookLoanVoucherId) {
        this.bookLoanVoucherId = bookLoanVoucherId;
    }

    public String getBookLoanVoucherName() {
        return bookLoanVoucherName;
    }

    public void setBookLoanVoucherName(String bookLoanVoucherName) {
        this.bookLoanVoucherName = bookLoanVoucherName;
    }

    public int getBorrowerID() {
        return borrowerID;
    }

    public void setBorrowerID(int borrowerID) {
        this.borrowerID = borrowerID;
    }

    public int getBookAmount() {
        return bookAmount;
    }

    public void setBookAmount(int bookAmount) {
        this.bookAmount = bookAmount;
    }

    public BookLoanVoucher(int bookLoanVoucherNote) {
        this.bookLoanVoucherNote = bookLoanVoucherNote;
    }
}

