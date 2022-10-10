package models;

import java.sql.Date;

public class Customer {
    protected int id;
    protected String customerId ;
    protected String customerName;
    protected Date customerBirthday;
    protected String customerEmail;
    protected String customerPhone;
    protected String customerAvatar;
    protected String customerRoleId;

    public Customer(String customerName, String customerEmail, String customerPassword) {
        this.customerName = customerName;
        this.customerEmail = customerEmail;
        this.customerPassword = customerPassword;
    }

    protected String customerPassword;

    public Customer() {
    }

    public Customer(String customerName, String customerPassword) {
        this.customerName = customerName;
        this.customerPassword = customerPassword;
    }

    public Customer(String customerId, String customerName, String customerEmail, String customerRoleId, String customerPassword) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.customerEmail = customerEmail;
        this.customerRoleId = customerRoleId;
        this.customerPassword = customerPassword;
    }

    public Customer(String customerId, String customerName, Date customerbirthday, String customerEmail, String customerPhone, String customerAvatar, String customerRoleId, String customerPassword) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.customerBirthday = customerbirthday;
        this.customerEmail = customerEmail;
        this.customerPhone = customerPhone;
        this.customerAvatar = customerAvatar;
        this.customerRoleId = customerRoleId;
        this.customerPassword = customerPassword;
    }

    public Customer(int id, String customerId, String customerName, Date customerBirthday, String customerEmail, String customerPhone, String customerAvatar, String customerRoleId, String customerPassword) {
        this.id = id;
        this.customerId = customerId;
        this.customerName = customerName;
        this.customerBirthday = customerBirthday;
        this.customerEmail = customerEmail;
        this.customerPhone = customerPhone;
        this.customerAvatar = customerAvatar;
        this.customerRoleId = customerRoleId;
        this.customerPassword = customerPassword;
    }

    public Customer(String customerId, String customerName, String customerEmail, String customerPhone, String customerAvatar, String customerRoleId, String customerPassword) {
        this.customerId = customerId;
        this.customerName = customerName;
        this.customerEmail = customerEmail;
        this.customerPhone = customerPhone;
        this.customerAvatar = customerAvatar;
        this.customerRoleId = customerRoleId;
        this.customerPassword = customerPassword;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public Date getCustomerBirthday() {
        return customerBirthday;
    }

    public void setCustomerbirthday(Date customerBirthday) {
        this.customerBirthday = customerBirthday;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCustomerAvatar() {
        return customerAvatar;
    }

    public void setCustomerAvatar(String customerAvatar) {
        this.customerAvatar = customerAvatar;
    }

    public String getCustomerRoleId() {
        return customerRoleId;
    }

    public void setCustomerRoleId(String customerRoleId) {
        this.customerRoleId = customerRoleId;
    }

    public void setCustomerBirthday(Date customerBirthday) {
        this.customerBirthday = customerBirthday;
    }

    public String getCustomerPassword() {
        return customerPassword;
    }

    public void setCustomerPassword(String customerPassword) {
        this.customerPassword = customerPassword;
    }


    public Customer(int id, String customerId, String customerName, Date customerBirthday, String customerEmail, String customerPhone, String customerAvatar, String customerRoleId) {
        this.id = id;
        this.customerId = customerId;
        this.customerName = customerName;
        this.customerBirthday = customerBirthday;
        this.customerEmail = customerEmail;
        this.customerPhone = customerPhone;
        this.customerAvatar = customerAvatar;
        this.customerRoleId = customerRoleId;
    }
}
