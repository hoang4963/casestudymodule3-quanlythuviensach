package DAO.borrowerbook;

import models.BorrowerBook;
import models.Role;

import java.sql.SQLException;
import java.util.List;

public interface IBorrowerBookDAO {
    public boolean deleteBorrowerBook(int id) throws SQLException;
    public BorrowerBook selectBorrowerBook(int id);
    public void insertBorrowerBook(BorrowerBook BorrowerBook) throws SQLException;
    public boolean updateBorrowerBook(BorrowerBook BorrowerBook) throws SQLException;
    public List<BorrowerBook> selectAllBorrowerBook();
}
