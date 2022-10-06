package DAO.borrowerbook;

import models.BorrowerBook;
import models.Role;

import java.sql.SQLException;
import java.util.List;

public interface IBorrowerBookDAO {
    public boolean deleteBorrower(int id) throws SQLException;
    public BorrowerBook selectBorrowerBook(int id);
    public void insertBorrower(BorrowerBook BorrowerBook) throws SQLException;
    public boolean updateBorrower(BorrowerBook BorrowerBook) throws SQLException;
    public List<BorrowerBook> selectAllBorrowerBook();
}
