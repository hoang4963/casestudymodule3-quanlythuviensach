package models;

import java.util.Date;

public class BorrowerInfo {
    protected String loanVoucherId;
    protected String borrowerId;
    protected String borrowerName;
    protected String bookName;
    protected int bookAmount;
    protected Date loanDate;
    protected Date returnDate;

    public BorrowerInfo(String loanVoucherId, String borrowerId, String borrowerName, String bookName, int bookAmount, Date loanDate, Date returnDate) {
        this.loanVoucherId = loanVoucherId;
        this.borrowerId = borrowerId;
        this.borrowerName = borrowerName;
        this.bookName = bookName;
        this.bookAmount = bookAmount;
        this.loanDate = loanDate;
        this.returnDate = returnDate;
    }

    public BorrowerInfo() {
    }

    public String getLoanVoucherId() {
        return loanVoucherId;
    }

    public void setLoanVoucherId(String loanVoucherId) {
        this.loanVoucherId = loanVoucherId;
    }

    public String getBorrowerId() {
        return borrowerId;
    }

    public void setBorrowerId(String borrowerId) {
        this.borrowerId = borrowerId;
    }

    public String getBorrowerName() {
        return borrowerName;
    }

    public void setBorrowerName(String borrowerName) {
        this.borrowerName = borrowerName;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public int getBookAmount() {
        return bookAmount;
    }

    public void setBookAmount(int bookAmount) {
        this.bookAmount = bookAmount;
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
