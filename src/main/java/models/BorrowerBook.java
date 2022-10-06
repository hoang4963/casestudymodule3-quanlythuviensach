package models;

import java.sql.Date;

public class BorrowerBook {
    protected int borrowerBookId;
    protected String loanVoucherId;
    protected String bookId;
    protected Date loanDate;
    protected Date returnDate;

    public BorrowerBook() {
    }

    public BorrowerBook(String loanVoucherId, String bookId, Date loanDate, Date returnDate) {
        this.loanVoucherId = loanVoucherId;
        this.bookId = bookId;
        this.loanDate = loanDate;
        this.returnDate = returnDate;
    }

    public BorrowerBook(int borrowerBookId, String loanVoucherId, String bookId, Date loanDate, Date returnDate) {
        this.borrowerBookId = borrowerBookId;
        this.loanVoucherId = loanVoucherId;
        this.bookId = bookId;
        this.loanDate = loanDate;
        this.returnDate = returnDate;
    }

    public int getBorrowerBookId() {
        return borrowerBookId;
    }

    public void setBorrowerBookId(int borrowerBookId) {
        this.borrowerBookId = borrowerBookId;
    }

    public String getLoanVoucherId() {
        return loanVoucherId;
    }

    public void setLoanVoucherId(String loanVoucherId) {
        this.loanVoucherId = loanVoucherId;
    }

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public Date getLoanDate() {
        return loanDate;
    }

    public void setLoanDate(Date loanDate) {
        this.loanDate = loanDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }
}