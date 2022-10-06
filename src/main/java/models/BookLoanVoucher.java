package models;

public class BookLoanVoucher {
    protected int bookLoanVoucherId;
    protected String bookLoanVoucherStatus;
    protected String borrowerID;
    protected int bookAmount;
    protected String bookLoanVoucherNote;

    public BookLoanVoucher(String bookLoanVoucherStatus, String borrowerID, int bookAmount, String bookLoanVoucherNote) {
    }

    public BookLoanVoucher(int bookLoanVoucherId, String bookLoanVoucherStatus, String borrowerID, int bookAmount, String bookLoanVoucherNote) {
        this.bookLoanVoucherId = bookLoanVoucherId;
        this.bookLoanVoucherStatus = bookLoanVoucherStatus;
        this.borrowerID = borrowerID;
        this.bookAmount = bookAmount;
        this.bookLoanVoucherNote = bookLoanVoucherNote;
    }

    public int getBookLoanVoucherId() {
        return bookLoanVoucherId;
    }

    public void setBookLoanVoucherId(int bookLoanVoucherId) {
        this.bookLoanVoucherId = bookLoanVoucherId;
    }

    public String getBookLoanVoucherStatus() {
        return bookLoanVoucherStatus;
    }

    public void setBookLoanVoucherStatus(String bookLoanVoucherStatus) {
        this.bookLoanVoucherStatus = bookLoanVoucherStatus;
    }

    public String getBorrowerID() {
        return borrowerID;
    }

    public void setBorrowerID(String borrowerID) {
        this.borrowerID = borrowerID;
    }

    public int getBookAmount() {
        return bookAmount;
    }

    public void setBookAmount(int bookAmount) {
        this.bookAmount = bookAmount;
    }

    public String getBookLoanVoucherNote() {
        return bookLoanVoucherNote;
    }

    public void setBookLoanVoucherNote(String bookLoanVoucherNote) {
        this.bookLoanVoucherNote = bookLoanVoucherNote;
    }
}


