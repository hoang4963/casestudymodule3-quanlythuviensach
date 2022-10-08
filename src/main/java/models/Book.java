package models;

import java.sql.Date;


public class Book implements Comparable<Book>{
    protected  int id;
    protected String bookId;
    protected String bookName;
    protected String bookDescription;
    protected String bookImage;
    protected String bookStatus;
    protected String bookCategoryId;
    protected String bookOrigin;

    protected Date extraDate;
    protected int days;


    public Book() {
    }
    public Book(int id,String bookId, String bookName, String bookDescription, String bookImage, String bookStatus, String bookCategoryId, String bookOrigin, Date extraDate) {
        this.id = id;
        this.bookId = bookId;
        this.bookName = bookName;
        this.bookDescription = bookDescription;
        this.bookImage = bookImage;
        this.bookStatus = bookStatus;
        this.bookCategoryId = bookCategoryId;
        this.bookOrigin = bookOrigin;
        this.extraDate = extraDate;
    }

    public Book(String bookId, String bookName, String bookDescription, String bookImage, String bookStatus, String bookCategoryId, String bookOrigin, Date extraDate) {
        this.bookId = bookId;
        this.bookName = bookName;
        this.bookDescription = bookDescription;
        this.bookImage = bookImage;
        this.bookStatus = bookStatus;
        this.bookCategoryId = bookCategoryId;
        this.bookOrigin = bookOrigin;
        this.extraDate = extraDate;
    }

    public Book(int id, String bookId, String bookName, String bookDescription, String bookImage, String bookStatus, String bookCategoryId, String bookOrigin, Date extraDate, int days) {
        this.id = id;
        this.bookId = bookId;
        this.bookName = bookName;
        this.bookDescription = bookDescription;
        this.bookImage = bookImage;
        this.bookStatus = bookStatus;
        this.bookCategoryId = bookCategoryId;
        this.bookOrigin = bookOrigin;
        this.extraDate = extraDate;
        this.days = days;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public String getBookCategoryId() {
        return bookCategoryId;
    }

    public void setBookCategoryId(String bookCategoryId) {
        this.bookCategoryId = bookCategoryId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookDescription() {
        return bookDescription;
    }

    public void setBookDescription(String bookDescription) {
        this.bookDescription = bookDescription;
    }

    public String getBookImage() {
        return bookImage;
    }

    public void setBookImage(String bookImage) {
        this.bookImage = bookImage;
    }

    public String getBookStatus() {
        return bookStatus;
    }

    public void setBookStatus(String bookStatus) {
        this.bookStatus = bookStatus;
    }


    public String getBookOrigin() {
        return bookOrigin;
    }

    public void setBookOrigin(String bookOrigin) {
        this.bookOrigin = bookOrigin;
    }

    public Date getExtraDate() {
        return extraDate;
    }

    public void setExtraDate(Date extraDate) {
        this.extraDate = extraDate;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    @Override
    public int compareTo(Book o) {
        return o.getDays() - this.getDays();
    }
}

