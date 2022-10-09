package DAO.changePass;

import connection.ConnectionDB;
import models.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ChangePassDAO{
    public static int resetPass(Customer customer, String sql) {
        int i = 0;
        Connection con = ConnectionDB.getConnection();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,customer.getCustomerPassword());
            pst.setString(2,customer.getCustomerName());
            i = pst.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }


}
