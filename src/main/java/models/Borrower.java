package models;

import java.sql.Date;

public class Borrower {
    protected int id;
    protected String borrowerId;
    protected String borrowerName;
    protected Date borrowerBirthDay;
    protected String borrowerAddress;
    protected String customerId;

    public Borrower() {
    }



    public Borrower(int id, String borrowerId, String borrowerName, Date borrowerBirthDay, String borrowerAddress, String customerId) {
        this.id = id;
        this.borrowerId = borrowerId;
        this.borrowerName = borrowerName;
        this.borrowerBirthDay = borrowerBirthDay;
        this.borrowerAddress = borrowerAddress;
        this.customerId = customerId;
    }

    public Borrower(String borrowerId, String borrowerName, Date borrowerBirthDay, String borrowerAddress, String customerId) {
        this.borrowerId = borrowerId;
        this.borrowerName = borrowerName;
        this.borrowerBirthDay = borrowerBirthDay;
        this.borrowerAddress = borrowerAddress;
        this.customerId = customerId;
    }

    public Borrower(String borrowerId, String borrowerName, Date borrowerBirthDay, String borrowerAddress) {
        this.borrowerId = borrowerId;
        this.borrowerName = borrowerName;
        this.borrowerBirthDay = borrowerBirthDay;
        this.borrowerAddress = borrowerAddress;
    }

    public Borrower(int id, String borrowerId, String borrowerName, Date borrowerBirthDay, String borrowerAddress) {
        this.id = id;
        this.borrowerId = borrowerId;
        this.borrowerName = borrowerName;
        this.borrowerBirthDay = borrowerBirthDay;
        this.borrowerAddress = borrowerAddress;
    }

    public String getBorrowerAddress() {
        return borrowerAddress;
    }

    public void setBorrowerAddress(String borrowerAddress) {
        this.borrowerAddress = borrowerAddress;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Date getBorrowerBirthDay() {
        return borrowerBirthDay;
    }

    public void setBorrowerBirthDay(Date borrowerBirthDay) {
        this.borrowerBirthDay = borrowerBirthDay;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }
}
