package service.service;

import model.Brand;
import model.Category;
import model.Product;
import service.iService.IServiceCRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IServiceCRUD<Product> {
    Connection connection = ConnectionToMySQL.getConnection();

    @Override
    public void add(Product product) {
        String sql = "insert into product(productName, brandId, categoryId, detail, quantity, price) values (?,?,?,?,?,?);";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, product.getProductName());
            preparedStatement.setInt(2, product.getBrand().getBrandId());
            preparedStatement.setInt(3, product.getCategory().getCategoryId());
            preparedStatement.setString(4, product.getDetail());
            preparedStatement.setInt(5, product.getQuantity());
            preparedStatement.setDouble(6, product.getPrice());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void edit(int id, Product product) {

    }

    @Override
    public void delete(int id) {
        String sql = "delete from product where productId = ?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Product> getAll() {
        List<Product> productList = new ArrayList<>();
        String sql = "select product.*, brand.brandName, category.categoryName from (product inner join brand on brand.brandId = product.brandId) inner join category on product.categoryId = category.categoryId;";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int productId = resultSet.getInt("productId");
                String productName = resultSet.getString("productName");
                int brandId = resultSet.getInt("brandId");
                String brandName = resultSet.getString("brandName");
                int categoryId = resultSet.getInt("categoryId");
                String categoryName = resultSet.getString("categoryName");
                String detail = resultSet.getString("detail");
                int quantity = resultSet.getInt("quantity");
                double price = resultSet.getDouble("price");

                Brand brand = new Brand(brandId, brandName);
                Category category = new Category(categoryId, categoryName);
                Product product = new Product(productId, productName, brand, category, detail, quantity, price);

                productList.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return productList;
    }
}
