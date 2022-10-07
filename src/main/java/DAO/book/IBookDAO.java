package DAO.book;

import models.Book;

import java.sql.SQLException;
import java.util.List;

public interface IBookDAO {
    public void insertBook(Book book) throws SQLException;

    public Book selectBook(int id);

//    public List<Book> selectAllBooks();

    public  boolean deleteBook(int id) throws SQLException;

    public boolean updateBook(Book book) throws SQLException;
    public List<Book> searchByName(String inputName);

    public List<Book> searchByOriginOrCategory(String inputOrigin,String inputCategory);
    public List<Book> selectAllBookSortByDay();
}
