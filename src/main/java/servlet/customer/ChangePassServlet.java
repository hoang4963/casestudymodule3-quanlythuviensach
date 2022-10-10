package servlet.customer;

import DAO.changePass.ChangePassDAO;
import connection.ConnectionDB;
import models.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "ChangePassServlet", urlPatterns = "/change")
public class ChangePassServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String oldPass = request.getParameter("oldPass");
        String newPass = request.getParameter("newPass");
        HttpSession session = request.getSession();
        String pass = (String)session.getAttribute("password");
        String name = (String)session.getAttribute("name");

        if (oldPass.equals(null) || oldPass == "" || newPass.equals(null) || newPass == "") {
            request.setAttribute("msg", "Vui lòng nhập lại thông tin");
            getServletContext().getRequestDispatcher("/user/changePassword.jsp").forward(request,response);
        }
//        else if (!pass.equals(oldPass)) {
//            request.setAttribute("msg", "Bạn nhập mật khẩu không đúng");
//            getServletContext().getRequestDispatcher("/user/changePassword.jsp").forward(request,response);
//        }
        else {
            Customer customer = new Customer();
            customer.setCustomerName(name);
            customer.setCustomerPassword(newPass);
            String sql = "update `quanlythuviensach`.`customer` set password = ? where name = ?";
            int i = ChangePassDAO.resetPass(customer,sql);
            if (i!= 0 ) {
                request.setAttribute("msg", "Thay đổi mật khẩu thành công");
                getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
            }else {
                request.setAttribute("msg", "Không thay đổi mật khẩu được");
                getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
            }
        }
        //        String oldPass = request.getParameter("oldPass");
//        String newPass = request.getParameter("newPass");
//        String pass = request.getParameter("password");
//
//        HttpSession session = request.getSession();
//        String name = (String)session.getAttribute("name");
//        RequestDispatcher dispatcher = null;
//        Connection con = null;
//        try {
//            con = ConnectionDB.getConnection();
//            PreparedStatement pst = con.prepareStatement("select * from `quanlythuviensach`.`customer` where password = ?");
//            pst.setString(1,pass);
//            ResultSet rs = pst.executeQuery();
//            if (rs.next()) {
//                if (oldPass.equals(null) || oldPass == "" || newPass.equals(null) || newPass == "") {
//                    request.setAttribute("msg", "Vui lòng nhập lại thông tin");
//                    getServletContext().getRequestDispatcher("/user/changePassword.jsp").forward(request,response);
//                }
//                else if (!pass.equals(oldPass)) {
//                    request.setAttribute("msg", "Bạn nhập mật khẩu không đúng");
//                    getServletContext().getRequestDispatcher("/user/changePassword.jsp").forward(request,response);
//                }
//                else {
//                    Customer customer = new Customer();
//                    customer.setCustomerName(name);
//                    customer.setCustomerPassword(newPass);
//                    String sql = "update `quanlythuviensach`.`customer` set password = ? where name = ?";
//                    int i = ChangePassDAO.resetPass(customer,sql);
//                    if (i!= 0 ) {
//                        request.setAttribute("msg", "Thay đổi mật khẩu thành công");
//                        getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
//                    }else {
//                        request.setAttribute("msg", "Không thay đổi mật khẩu được");
//                        getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);
//                    }
//                }
//            }
//        }catch (Exception e) {
//            e.printStackTrace();
//        }


    }
}
