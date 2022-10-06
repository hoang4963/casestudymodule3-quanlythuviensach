
package servlet.role;


import DAO.role.RoleDAO;
import models.Role;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "RoleServlet", urlPatterns = "/roles")
public class RoleServlet extends HttpServlet {
    private RoleDAO roleDAO;
    public void init() {
        roleDAO = new RoleDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
                case "delete":
                    deleteRole(request, response);
                    break;
                default:
                    listRole(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("role/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Role existingRole = roleDAO.selectRole(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("role/edit.jsp");
        request.setAttribute("role", existingRole);
        dispatcher.forward(request, response);

    }

    private void listRole(HttpServletRequest request, HttpServletResponse response) {
        List<Role> listRole = roleDAO.selectAllRoles();
        request.setAttribute("listRole", listRole);
        RequestDispatcher dispatcher = request.getRequestDispatcher("role/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
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
                    insertRole(request, response);
                    break;
                case "edit":
                    updateRole(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void insertRole(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String name = request.getParameter("name");
        String roleid = request.getParameter("roleId");
        Role newRole = new Role(roleid,name);
        roleDAO.insertRole(newRole);
        RequestDispatcher dispatcher = request.getRequestDispatcher("role/create.jsp");
        dispatcher.forward(request, response);
    }
    private void updateRole(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String roleid = request.getParameter("roleId");
        String name = request.getParameter("name");
        Role role = new Role(id,roleid, name);
        roleDAO.updateRole(role);
        RequestDispatcher dispatcher = request.getRequestDispatcher("role/edit.jsp");
        dispatcher.forward(request, response);
    }
    private void deleteRole(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        roleDAO.deleteRole(id);
        List<Role> listRole = roleDAO.selectAllRoles();
        request.setAttribute("listRole", listRole);
        RequestDispatcher dispatcher = request.getRequestDispatcher("role/list.jsp");
        dispatcher.forward(request, response);
    }
}
