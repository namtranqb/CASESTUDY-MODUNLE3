package com.WEB_NAM.DAO;

import com.WEB_NAM.contex.DBcontex;
import com.WEB_NAM.model.Category;
import com.WEB_NAM.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO  extends DBcontex implements IGeneralDAO {
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;


    public List<Category> getAllCategory() {
        List<Category> categories = new ArrayList<>();
        String query = "select * from category";

        try{
            connection = getConnection();
            statement = connection.prepareStatement(query);
            resultSet = statement.executeQuery();

            while (resultSet.next()){
                categories.add(new Category(
                        resultSet.getInt(1),
                        resultSet.getString(2)
                ));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return categories;
    }
}
