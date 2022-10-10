package DAO.category;

import models.BookCategory;

import java.sql.SQLException;
import java.util.List;

public interface ICategoryDAO {
    public void insertCategory(BookCategory bookCategory) throws SQLException;

    public BookCategory selectCategory(int findId);

    public List<BookCategory> selectAllCategorys();

    public  boolean deleteCategory(int id) throws SQLException;

    public boolean updateCategory(BookCategory bookCategory) throws SQLException;
    public List<BookCategory> searchByCategoryID(String categoryID);

}

