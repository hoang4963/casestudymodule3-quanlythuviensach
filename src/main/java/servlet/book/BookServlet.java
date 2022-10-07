package servlet.book;

import DAO.book.BookDAO;
import DAO.category.CategoryDAO;
import models.Book;
import models.BookCategory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "BookServlet", value = "/books")
public class BookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BookDAO bookDAO;
    private CategoryDAO categoryDAO;
    public void init(){
        bookDAO = new BookDAO();
        categoryDAO = new CategoryDAO();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "view" :
                    viewBook(request,response);
                case "delete" :
                    deleteBook(request,response);
                    break;
                default:
                    sortByDays(request,response);
                    break;
            }
        }catch(SQLException ex)
        {
            throw new ServletException(ex);
        }
    }
    private void sortByDays(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        List<Book> listBooks = bookDAO.selectAllBookSortByDay();
        List<BookCategory> listCategory = categoryDAO.selectAllCategorys();
        Collections.sort(listBooks);
        request.setAttribute("listBooks", listBooks);
        request.setAttribute("listCategories",listCategory);
        RequestDispatcher dispatcher = request.getRequestDispatcher("book/list.jsp");
        dispatcher.forward(request, response);
    }

    private void viewBook(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        Book book = bookDAO.selectBook(id);
        RequestDispatcher dispatcher;
        if (book == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("book",book);
            dispatcher = request.getRequestDispatcher("book/view.jsp");
        }
        dispatcher.forward(request,response);
    }


    private void showEditForm(HttpServletRequest request, HttpServletResponse response)  throws ServletException,IOException,SQLException{
        int id = Integer.parseInt(request.getParameter("id"));
        Book existingBook = bookDAO.selectBook(id);
        RequestDispatcher dispatcher;
        if (existingBook == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("book", existingBook);
            dispatcher = request.getRequestDispatcher("book/edit.jsp");
        }
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {

        List<BookCategory> listCategory = categoryDAO.selectAllCategorys();
        request.setAttribute("listCategories",listCategory);
        RequestDispatcher dispatcher = request.getRequestDispatcher("book/create.jsp");
        dispatcher.forward(request, response);
    }

//    private void listBook(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
//        List<Book> listBooks = bookDAO.selectAllBooks();
//        List<BookCategory> listCategory = categoryDAO.selectAllCategorys();
//        request.setAttribute("listBooks", listBooks);
//        request.setAttribute("listCategories",listCategory);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("book/list.jsp");
//        dispatcher.forward(request, response);
//    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertBook(request, response);
                    break;
                case "edit":
                    updateBook(request, response);
                    break;

                case "searchByName" :
                    searchByName(request, response);
                    break;
                case "searchByOriginOrCategory" :
                    searchByOriginOrCategory(request,response);
                default:
                    sortByDays(request,response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void searchByOriginOrCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        String origin = request.getParameter("searchOrigin");
        String category = request.getParameter("searchCategory");
        List<BookCategory> listCategory = categoryDAO.selectAllCategorys();
        List<Book> books = bookDAO.searchByOriginOrCategory(origin,category);
        request.setAttribute("listCategories",listCategory);
        request.setAttribute("listBooks", books);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("book/search.jsp");
        requestDispatcher.forward(request, response);
    }

    private void searchByName(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        String name = request.getParameter("searchName");
        List<BookCategory> listCategory = categoryDAO.selectAllCategorys();
        request.setAttribute("listCategories",listCategory);
        List<Book> books = bookDAO.searchByName(name);
        request.setAttribute("listBooks", books);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("book/search.jsp");
        requestDispatcher.forward(request, response);
    }
    private void deleteBook(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        bookDAO.deleteBook(id);
        List<Book> listBook = bookDAO.selectAllBookSortByDay();
        request.setAttribute("listBook", listBook);
        RequestDispatcher dispatcher = request.getRequestDispatcher("book/delete.jsp");
        dispatcher.forward(request, response);
    }

    private void updateBook(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String bookId = request.getParameter("bookId");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String image = request.getParameter("image");
        String status = request.getParameter("status");
        String categoryId = request.getParameter("category_id");
        String origin = request.getParameter("origin");
        Date extraDate = Date.valueOf(request.getParameter("extraDate"));

        Book book = new Book(id,bookId, name, description, image,status,categoryId,origin,extraDate);
        bookDAO.updateBook(book);
        request.setAttribute("book",book);
        RequestDispatcher dispatcher = request.getRequestDispatcher("book/edit.jsp");
        request.setAttribute("message","Product information was updated");
        dispatcher.forward(request, response);
    }

    private void insertBook(HttpServletRequest request, HttpServletResponse response) throws  SQLException,IOException,ServletException {
        String bookId = request.getParameter("bookId");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String image = request.getParameter("image");
        String status = request.getParameter("status");
        String categoryId = request.getParameter("categoryId");
        String origin = request.getParameter("origin");
        Date extraDate = Date.valueOf(request.getParameter("extraDate"));
        Book newBook = new Book(bookId,name,description,image,status,categoryId,origin,extraDate);
        bookDAO.insertBook(newBook);
        RequestDispatcher dispatcher = request.getRequestDispatcher("book/create.jsp");
        request.setAttribute("message","New product was created");
        dispatcher.forward(request, response);
    }
}
