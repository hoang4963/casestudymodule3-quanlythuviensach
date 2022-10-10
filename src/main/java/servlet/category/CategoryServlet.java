package servlet.category;

import DAO.category.CategoryDAO;
import models.BookCategory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CategoryServlet", value = "/categories")
public class CategoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CategoryDAO categoryDao;
    public void init(){
        categoryDao = new CategoryDAO();
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
                    viewCategory(request,response);
                case "delete" :
                    deleteCategory(request,response);
                    break;
                default:
                    listCategory(request, response);
                    break;
            }
        }catch(SQLException ex)
        {
            throw new ServletException(ex);
        }
    }



    private void listCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        List<BookCategory> listCategorys = categoryDao.selectAllCategorys();
        request.setAttribute("listCategories", listCategorys);
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/list.jsp");
        dispatcher.forward(request, response);
    }

    private void viewCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        BookCategory bookCategory = categoryDao.selectCategory(id);
        RequestDispatcher dispatcher;
        if (bookCategory == null){
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("category",bookCategory);
            dispatcher = request.getRequestDispatcher("category/view.jsp");
        }
        dispatcher.forward(request,response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)  throws SQLException,IOException,ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        BookCategory existingCategory = categoryDao.selectCategory(id);
        RequestDispatcher dispatcher;
        if (existingCategory == null) {
            dispatcher = request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("category", existingCategory);
            dispatcher = request.getRequestDispatcher("category/edit.jsp");
        }
        dispatcher.forward(request, response);
    }


    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/create.jsp");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertCategory(request, response);
                    break;
                case "edit":
                    updateCategory(request, response);
                    break;

                case "searchBy" :
                    searchByID(request, response);
                    break;
                default:
                    listCategory(request, response);
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void searchByID(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        String categoryID = request.getParameter("search");
        List<BookCategory> categories = categoryDao.searchByCategoryID(categoryID);
        request.setAttribute("listCategories", categories);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("category/list.jsp");
        requestDispatcher.forward(request, response);
    }

    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
         boolean rowDeleted =   categoryDao.deleteCategory(id);
            if (!rowDeleted){
                List<BookCategory> categories = categoryDao.selectAllCategorys();
                request.setAttribute("categories", categories);
                RequestDispatcher dispatcher = request.getRequestDispatcher("category/delete.jsp");
                dispatcher.forward(request, response);
            }else {
                RequestDispatcher dispatcher = request.getRequestDispatcher("error-404.jsp");
                dispatcher.forward(request, response);
            }

    }

    private void updateCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String bookId = request.getParameter("categoriesId");
        String name = request.getParameter("name");

        BookCategory category = new BookCategory(id,bookId, name);
        categoryDao.updateCategory(category);
        request.setAttribute("category",category);
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/edit.jsp");
        request.setAttribute("message","Product information was updated");
        dispatcher.forward(request, response);
    }

    private void insertCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException {
        String categoryId = request.getParameter("categoriesId");
        String name = request.getParameter("name");

        BookCategory newCategory = new BookCategory(categoryId,name);
        categoryDao.insertCategory(newCategory);
        RequestDispatcher dispatcher = request.getRequestDispatcher("category/create.jsp");
        request.setAttribute("message","New product was created");
        dispatcher.forward(request, response);
    }
}
