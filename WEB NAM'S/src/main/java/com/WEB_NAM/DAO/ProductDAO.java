package com.WEB_NAM.DAO;

import com.WEB_NAM.contex.DBcontex;
import com.WEB_NAM.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO  extends DBcontex implements IGeneralDAO {

    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;

    public List<Product> getAllProduct(){
        List<Product> products = new ArrayList<>();
        String query = " SELECT * FROM product";

        try{
            connection = getConnection();
            statement = connection.prepareStatement(query);
            resultSet = statement.executeQuery();

            while (resultSet.next()){
                products.add(new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getInt(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8)
                ));
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }

    public List<Product> getAllProductDESC(){
        List<Product> products = new ArrayList<>();
        String query = " SELECT * FROM product order by pid DESC";

        try{
            connection = getConnection();
            statement = connection.prepareStatement(query);
            resultSet = statement.executeQuery();

            while (resultSet.next()){
                products.add(new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getInt(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8)
                ));
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }

    public List<Product> getBestProduct(){
        List<Product> products = new ArrayList<>();
        String query = "SELECT * FROM product ORDER BY pid DESC LIMIT 7";

        try{
            connection = getConnection();
            statement = connection.prepareStatement(query);
            resultSet = statement.executeQuery();

            while (resultSet.next()){
                products.add(new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getInt(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8)
                ));
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }


    public List<Product> getProductByCID(int cid){
        List<Product> products = new ArrayList<>();
        String query = "select * from product where cid = ?";

        try{
            connection = getConnection();
            statement = connection.prepareStatement(query);
            statement.setInt(1,cid);
            resultSet = statement.executeQuery();

            while (resultSet.next()){
                products.add(new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getInt(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8)
                ));
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }

    public Product getProductByID(int id){
        String query = " select * from product where pid = ?";
        try{
            connection = getConnection();
            statement = connection.prepareStatement(query);
            statement.setInt(1,id);
            resultSet = statement.executeQuery();

            while (resultSet.next()){
                return new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getInt(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8)
                );
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public List<Product> searchProduct(String keyword){
        List<Product> products = new ArrayList<>();
        String query = " SELECT * FROM product where pname like ? or price like ? or color like ? or pcode like ?";
        keyword = "%"+keyword+"%";
        try{
            connection = getConnection();
            statement = connection.prepareStatement(query);
            statement.setString(1,keyword);
            statement.setString(2,keyword);
            statement.setString(3,keyword);
            statement.setString(4,keyword);
            resultSet = statement.executeQuery();

            while (resultSet.next()){
                products.add(new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getInt(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8)
                ));
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }


    public void insertProduct(Product product, int cid) throws SQLException {
        String INSERT_PRODUCT ="INSERT INTO product(pcode,pname,price,quantity,pimage,color,`description`,cid) VALUES (?,?,?,?,?,?,?,?)";
        connection = getConnection();
        statement = connection.prepareStatement(INSERT_PRODUCT);
        statement.setString(1, product.getPcode());
        statement.setString(2, product.getPname());
        statement.setDouble(3,product.getPrice());
        statement.setInt(4,product.getQuantity());
        statement.setString(5, product.getPimage());
        statement.setString(6, product.getColor());
        statement.setString(7, product.getDescription());
        statement.setInt(8,cid);

        statement.executeUpdate();

    }

    public void updateProduct(Product product, int cid) throws SQLException {
        String UPDATE_PRODUCT ="UPDATE product set pcode = ?,pname = ?,price = ?,quantity = ?,pimage = ?,color = ?,`description` = ?,cid = ? where pid = ?";
        connection = getConnection();
        statement = connection.prepareStatement(UPDATE_PRODUCT);
        statement.setString(1, product.getPcode());
        statement.setString(2, product.getPname());
        statement.setDouble(3,product.getPrice());
        statement.setInt(4,product.getQuantity());
        statement.setString(5, product.getPimage());
        statement.setString(6, product.getColor());
        statement.setString(7, product.getDescription());
        statement.setInt(8,cid);
        statement.setInt(9,product.getPid());

        statement.executeUpdate();
    }


    public boolean deleteProduct(int id) throws SQLException {
        String DELETE_PRODUCT = "DELETE FROM product where pid =?";
        boolean rowDeleted;
        connection = getConnection();
        statement = connection.prepareStatement(DELETE_PRODUCT);
            statement.setInt(1,id);
            rowDeleted = statement.executeUpdate() > 0;

        return rowDeleted;
    }

    public List<Product> getProductByCName(String cname) {
        List<Product> products = new ArrayList<>();
        String query = "select product.* from product join category on product.cid = category.cid where category.cname = ?";

        try{
            connection = getConnection();
            statement = connection.prepareStatement(query);
            statement.setString(1,cname);
            resultSet = statement.executeQuery();

            while (resultSet.next()){
                products.add(new Product(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getDouble(4),
                        resultSet.getInt(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8)
                ));
            }
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }
}
