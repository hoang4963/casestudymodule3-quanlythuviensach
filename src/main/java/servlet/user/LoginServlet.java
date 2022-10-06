package servlet.user;

import connection.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Objects;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        Connection con =null;

        try {
            con = ConnectionDB.getConnection();

            PreparedStatement pst = con.prepareStatement("select * from `quanlythuviensach`.`accounts` where email = ? and password = ?");
            pst.setString(1, email);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();

//            Filter servlet
            if (rs.next()) {
                System.out.println(rs.getString("role_id"));
                String i = rs.getString("role_id");
                if (Objects.equals(i, "R01")) {

                    session.setAttribute("name", rs.getString("name"));
                    dispatcher = request.getRequestDispatcher("role/admin.jsp");
                    dispatcher.forward(request, response);
                } else if (Objects.equals(i, "R02")) {
                    session.setAttribute("name", rs.getString("name"));
                    dispatcher = request.getRequestDispatcher("role/customer.jsp");
                    dispatcher.forward(request, response);

                } else {
                    session.setAttribute("name", rs.getString("name"));
                    dispatcher = request.getRequestDispatcher("role/librarian.jsp");
                    dispatcher.forward(request, response);

                }

            } else {
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("user/login.jsp");
            }
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
