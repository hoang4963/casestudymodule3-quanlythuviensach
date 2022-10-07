package models;

public class BookCategory {
    protected int id;
    protected String bookCategoryId;
    protected String bookCategoryName;


    public BookCategory() {
    }
    public BookCategory(String bookCategoryId, String bookCategoryName) {
        this.bookCategoryId = bookCategoryId;
        this.bookCategoryName = bookCategoryName;
    }

    public BookCategory(int id,String bookCategoryId, String bookCategoryName) {
        this.id = id;
        this.bookCategoryId = bookCategoryId;
        this.bookCategoryName = bookCategoryName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookCategoryId() {
        return bookCategoryId;
    }

    public void setBookCategoryId(String bookCategoryId) {
        this.bookCategoryId = bookCategoryId;
    }

    public String getBookCategoryName() {
        return bookCategoryName;
    }

    public void setBookCategoryName(String bookCategoryName) {
        this.bookCategoryName = bookCategoryName;
    }
}
