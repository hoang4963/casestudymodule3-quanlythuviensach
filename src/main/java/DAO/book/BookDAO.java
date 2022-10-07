package DAO.book;

import connection.ConnectionDB;
import models.Book;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDAO implements IBookDAO {
    private static final String INSERT_BOOK_SQL = "insert into book(bookId, name, description, image, status, category_id, origin,extraDate) values (?,?,?,?,?,?,?,?)";
    private static final String SELECT_BOOK_BY_ID = "select * from book where id = ?";
    private static final String SELECT_ALL_BOOKS = "select * from book";
    private static final String DELETE_BOOK_SQL ="delete from book where id = ?";
    private static final String UPDATE_BOOK_SQL = "update book set bookId = ?,name = ?, description = ?, image = ?, status = ?, category_id = ?, origin = ?,extraDate = ? where id = ?";
    private static final String SELECT_BY_NAME = "select * from book where name like ?;";
    private static final String SELECT_BY_ORIGIN_OR_CATEGORY = "select * from book where origin = ? or category_id = ?;";
    private static final String SORT_BOOK_BY_DATE ="select * from booktoday;";
    public BookDAO() {
    }

    @Override
    public void insertBook(Book book) throws SQLException {
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOK_SQL)) {

            preparedStatement.setString(1, book.getBookId());
            preparedStatement.setString(2, book.getBookName());
            preparedStatement.setString(3, book.getBookDescription());
            preparedStatement.setString(4, book.getBookImage());
            preparedStatement.setString(5, book.getBookStatus());
            preparedStatement.setString(6, book.getBookCategoryId());
            preparedStatement.setString(7, book.getBookOrigin());
            preparedStatement.setDate(8, book.getExtraDate());
            System.out.println(preparedStatement);

            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            printSQLException(e);
        }

    }

//    @Override
//    public List<Book> selectAllBooks() {
//        List<Book> books = new ArrayList<>();
//        try (Connection connection = ConnectionDB.getConnection();
//             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BOOKS)) {
//            System.out.println(preparedStatement);
//            ResultSet rs = preparedStatement.executeQuery();
//
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                String bookId =  rs.getString("bookId");
//                String name = rs.getString("name");
//                String description = rs.getString("description");
//                String image = rs.getString("image");
//                String status = rs.getString("status");
//                String category_id = rs.getString("category_id");
//                String origin = rs.getString("origin");
//                Date extraDate = rs.getDate("extraDate");
//
//                books.add(new Book(id,bookId,name,description,image,status,category_id,origin,extraDate));
//            }
//        } catch (SQLException e) {
//            printSQLException(e);
//        }
//        return books;
//    }

    @Override
    public Book selectBook(int findId) {
        Book book = null;
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BOOK_BY_ID)) {
            preparedStatement.setInt(1,findId);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String bookId =  rs.getString("bookId");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                String status = rs.getString("status");
                String category_id = rs.getString("category_id");
                String origin = rs.getString("origin");
                Date extraDate = rs.getDate("extraDate");

                book = new Book(id,bookId,name,description,image,status,category_id,origin,extraDate);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return book;
    }
    @Override
    public boolean deleteBook(int id) throws SQLException {
        boolean rowDeleted;
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_BOOK_SQL)) {
            preparedStatement.setInt(1,id);
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    public boolean updateBook(Book book) throws SQLException {
        boolean rowUpdate;
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_BOOK_SQL)){
            preparedStatement.setString(1, book.getBookId());
            preparedStatement.setString(2, book.getBookName());
            preparedStatement.setString(3, book.getBookDescription());
            preparedStatement.setString(4, book.getBookImage());
            preparedStatement.setString(5, book.getBookStatus());
            preparedStatement.setString(6, book.getBookCategoryId());
            preparedStatement.setString(7, book.getBookOrigin());
            preparedStatement.setDate(8, book.getExtraDate());
            preparedStatement.setInt(9,book.getId());

            rowUpdate = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdate;

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
    public List<Book> searchByName(String inputName) {
        List<Book> books = new ArrayList<>();
        Connection conn = ConnectionDB.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(SELECT_BY_NAME);
            ps.setString(1, "%"+ inputName + "%");
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String bookId =  rs.getString("bookId");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                String status = rs.getString("status");
                String category_id = rs.getString("category_id");
                String origin = rs.getString("origin");
                Date extraDate = rs.getDate("extraDate");

                books.add(new Book(id,bookId,name,description,image,status,category_id,origin,extraDate));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return books;
    }
    public List<Book> searchByOriginOrCategory(String inputOrigin,String inputCategory) {
        List<Book> books = new ArrayList<>();
        Connection conn = ConnectionDB.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(SELECT_BY_ORIGIN_OR_CATEGORY);
            ps.setString(1,  inputOrigin);
            ps.setString(2,  inputCategory);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String bookId =  rs.getString("bookId");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                String status = rs.getString("status");
                String category_id = rs.getString("category_id");
                String origin = rs.getString("origin");
                Date extraDate = rs.getDate("extraDate");

                books.add(new Book(id,bookId,name,description,image,status,category_id,origin,extraDate));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return books;
    }
    @Override
    public List<Book> selectAllBookSortByDay() {
        List<Book> books = new ArrayList<>();
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SORT_BOOK_BY_DATE)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String bookId =  rs.getString("bookId");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                String status = rs.getString("status");
                String category_id = rs.getString("category_id");
                String origin = rs.getString("origin");
                Date extraDate = rs.getDate("extraDate");
                int days = rs.getInt("days");

                books.add(new Book(id,bookId,name,description,image,status,category_id,origin,extraDate,days));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return books;
    }
}
