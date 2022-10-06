package models;

import java.sql.Date;

public class BorrowerBook {
    protected int borrowerBookId;
    protected int loanVoucherId;
    protected int bookId;
    protected Date loanDate;
    protected Date returnDate;

    public BorrowerBook() {
    }

    public BorrowerBook(int borrowerBookId, int loanVoucherId, int bookId, Date loanDate, Date returnDate) {
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

    public int getLoanVoucherId() {
        return loanVoucherId;
    }

    public void setLoanVoucherId(int loanVoucherId) {
        this.loanVoucherId = loanVoucherId;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
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