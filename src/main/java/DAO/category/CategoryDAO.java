package DAO.category;

import connection.ConnectionDB;
import models.BookCategory;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO implements ICategoryDAO {
    private static final String INSERT_CATEGORY_SQL = "insert into bookcategory(categoryId, name) values (?,?)";
    private static final String SELECT_CATEGORY_BY_ID = "select * from bookcategory where id = ?";
    private static final String SELECT_ALL_CATEGORYS = "select * from bookcategory";
    private static final String DELETE_CATEGORY_SQL ="delete from bookcategory where id = ?";
    private static final String UPDATE_CATEGORY_SQL = "update bookcategory set categoryId = ?,name = ? where id = ?";
    private static final String SELECT_BY_ID = "select * from bookcategory where categoryID = ?";
    private static final String CHECK_ID_CATEGORY_HAS_BOOK = "select bookcategory.id from bookcategory inner join book where categoryId = book.category_id group by categoryId;";
    public CategoryDAO() {
    }
    private static List<Integer> listIdCategoryHasBook(){
        List<Integer> idRolesHasBook = new ArrayList<>();
        System.out.println(CHECK_ID_CATEGORY_HAS_BOOK);
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(CHECK_ID_CATEGORY_HAS_BOOK)){
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                idRolesHasBook.add(id);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return idRolesHasBook;
    }

    @Override
    public void insertCategory(BookCategory bookCategory) throws SQLException {
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CATEGORY_SQL)) {

            preparedStatement.setString(1, bookCategory.getBookCategoryId());
            preparedStatement.setString(2, bookCategory.getBookCategoryName());

            System.out.println(preparedStatement);

            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            printSQLException(e);
        }

    }

    @Override
    public BookCategory selectCategory(int findId) {
        BookCategory category = null;
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CATEGORY_BY_ID)) {
            preparedStatement.setInt(1,findId);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String categoryId =  rs.getString("categoryId");
                String name = rs.getString("name");

                category = new BookCategory(id,categoryId,name);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return category;
    }

    @Override
    public List<BookCategory> selectAllCategorys() {
        List<BookCategory> categoryList = new ArrayList<>();
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORYS)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String categoryId = rs.getString("categoryId");
                String name = rs.getString("name");

                categoryList.add(new BookCategory(id,categoryId,name));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return categoryList;
    }

    @Override
    public boolean updateCategory(BookCategory bookCategory) throws SQLException {
        boolean rowUpdate;
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CATEGORY_SQL)){
            preparedStatement.setString(1, bookCategory.getBookCategoryId());
            preparedStatement.setString(2, bookCategory.getBookCategoryName());
            preparedStatement.setInt(3,bookCategory.getId());
            rowUpdate = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdate;

    }

    @Override
    public boolean deleteCategory(int id) throws SQLException {
        boolean rowDeleted;
        boolean check = false;
        List<Integer> integerList = CategoryDAO.listIdCategoryHasBook();
        for (int i = 0; i < integerList.size(); i++) {
            if (integerList.get(i) == i){
                check = true;
                break;
            }
        }
        if (!check){
            try(Connection connection = ConnectionDB.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CATEGORY_SQL)) {
                preparedStatement.setInt(1,id);
                rowDeleted = preparedStatement.executeUpdate() > 0;
            }catch (SQLException e){
                return false;
            }
        }
        else rowDeleted = false;
        return rowDeleted;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    @Override
    public List<BookCategory> searchByCategoryID(String categoryID) {
        List<BookCategory> categories = new ArrayList<>();
        Connection conn = ConnectionDB.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(SELECT_BY_ID);
            ps.setString(1, categoryID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String categoryId =  rs.getString("categoryId");
                String name = rs.getString("name");
                categories.add(new BookCategory(id,categoryId,name));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return categories;
    }
}
