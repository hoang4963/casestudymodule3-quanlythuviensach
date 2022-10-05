package com.example.user;

import connection.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("firstname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        RequestDispatcher dispatcher = null;
        Connection connection =null;
        try {
            connection = ConnectionDB.getConnection();
            PreparedStatement pst = connection.prepareStatement("insert into `quanlythuviensach`.`accounts`(name,password,email) values (?,?,?)");
            pst.setString(1, name);
            pst.setString(2, password);
            pst.setString(3, email);

            int rowCount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("user/register.jsp");
            if (rowCount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }


    }
}
