package DAO.borrower;

import models.Borrower;

import java.sql.SQLException;
import java.util.List;

public interface IBorrowerDAO {
    public void insertBorrower(Borrower borrower) throws SQLException;

    public Borrower selectBorrower(int id);

    public List<Borrower> selectAllBorrowers();

    public boolean deleteBorrower(int id) throws SQLException;

    public boolean updateBorrower(Borrower borrower) throws SQLException;
    public List<Borrower> searchByName(String name);
}
