package service.service;

import model.Import;
import model.Product;
import model.User;
import service.connect.ConnectionToMySQL;
import service.iService.IServiceCRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

public class ImportService implements IServiceCRUD<Import> {
    Connection connection = ConnectionToMySQL.getConnection();

    @Override
    public void add(Import anImport) {
        String sql = "insert into import(userId, productId, quantityImport, dateImport) values (?, ?, ?, ?);";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, anImport.getUser().getUserId());
            preparedStatement.setInt(2, anImport.getProduct().getProductId());
            preparedStatement.setInt(3, anImport.getQuantityImport());
            preparedStatement.setDate(4, anImport.getDateImport());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void edit(int id, Import anImport) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public List<Import> getAll() {
        List<Import> importList = new ArrayList<>();
        String sql = "select import.*,user.username,product.productName from (import inner join user on import.userId = user.userId) inner join product on import.productId=product.productId order by importId;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int importId = resultSet.getInt("importId");
                int userId = resultSet.getInt("userId");
                String username = resultSet.getString("username");
                int productId = resultSet.getInt("productId");
                String productName = resultSet.getString("productName");
                int quantityImport = resultSet.getInt("quantityImport");
                Date dateImport = resultSet.getDate("dateImport");

                User user = new User(userId, username);
                Product product = new Product(productId, productName);
                Import newImport = new Import(importId, user, product, quantityImport, dateImport);

                importList.add(newImport);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return importList;
    }
}
