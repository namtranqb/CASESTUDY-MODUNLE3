package com.WEB_NAM.contex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBcontex {

    protected  static Connection getConnection(){

        final String jdbcURL="jdbc:mysql://localhost:3306/jwbd_exam";
        final String jdbcUsername = "root";
        final String jdbcPassword = "admin";
        Connection connection = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return connection;
    }

}
