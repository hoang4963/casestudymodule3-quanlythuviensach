package DAO.role;

import connection.ConnectionDB;
import models.Role;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoleDAO implements IRoleDAO {


    private static final String INSERT_ROLE_SQL = "INSERT INTO role (roleId,name) VALUES (?,?);";
    private static final String SELECT_ROLE_BY_ID = "select * from role where id =?";
    private static final String SELECT_ALL_ROLES = "select * from role";
    private static final String DELETE_ROLES_SQL = "delete from role where id = ?;";
    private static final String UPDATE_ROLES_SQL = "update role set roleId = ?, name = ? where id = ?;";


    //Trung
    //hoangoccho
    public RoleDAO() {
    }

    @Override
    public void insertRole(Role role) throws SQLException {
        System.out.println(INSERT_ROLE_SQL);
        try (Connection connection = ConnectionDB.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ROLE_SQL)) {
            preparedStatement.setString(1, role.getRoleid());
            preparedStatement.setString(2, role.getRoleName());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }
        catch (SQLException e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    public Role selectRole(int id) {
        Role role = null;
        try (Connection connection = ConnectionDB.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ROLE_BY_ID)) {
            preparedStatement.setInt(1,id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                String roleId = rs.getString("roleId");
                String roleName = rs.getString("name");
                role = new Role(id,roleId,roleName);
            }
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        return role;
    }

    @Override
    public List<Role> selectAllRoles() {
        List<Role> roles = new ArrayList<>();
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ROLES)){
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String roleId = rs.getString("roleId");
                String name = rs.getString("name");
                roles.add(new Role(id,roleId,name));
            }
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        return roles;
    }

    @Override
    public boolean deleteRole(int id) throws SQLException {
        boolean rowDeleted;
            try(Connection connection = ConnectionDB.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(DELETE_ROLES_SQL)){
                System.out.println(preparedStatement);
                preparedStatement.setInt(1,id);
                rowDeleted = preparedStatement.executeUpdate() >0;
            }
        return rowDeleted;
    }

    @Override
    public boolean updateRole(Role role) throws SQLException {
        boolean rowUpdated;
        try(Connection connection = ConnectionDB.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_ROLES_SQL)){
            preparedStatement.setString(1,role.getRoleid());
            preparedStatement.setString(2,role.getRoleName());
            preparedStatement.setInt(3,role.getId());
            rowUpdated = preparedStatement.executeUpdate() >0;
        }
        return rowUpdated;
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
}
