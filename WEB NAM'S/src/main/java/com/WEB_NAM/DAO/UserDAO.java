package com.WEB_NAM.DAO;

import com.WEB_NAM.contex.DBcontex;
import com.WEB_NAM.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO extends DBcontex implements IGeneralDAO {

    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;


    public User loginUser(String username, String password) throws SQLException {

        String CHECK_LOGIN ="SELECT * FROM user WHERE uname= ? and `password` = ?";

        connection = getConnection();
        statement = connection.prepareStatement(CHECK_LOGIN);
            statement.setString(1,username);
            statement.setString(2,password);

            resultSet = statement.executeQuery();
            while (resultSet.next()){
                return new User(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getDate(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getInt(8));
            }
        return null;
    }

    public void registerUser(User user) throws SQLException {

        String INSERT_USER ="INSERT INTO `jwbd_exam`.`user` (`uname`, `password`, `fullname`, `dob`, `email`) VALUES (?,?,?,?,?)";
        connection = getConnection();
        statement = connection.prepareStatement(INSERT_USER);
        statement.setString(1, user.getUname());
        statement.setString(2, user.getPassword());
        statement.setString(3, user.getFullname());
        statement.setDate(4,user.getDob());
        statement.setString(5,user.getEmail());

        statement.executeUpdate();
    }

    public User checkExist(User user) throws SQLException {
        String CHECK_EXITS = "SELECT * FROM user WHERE uname = ? and email = ?";
        connection = getConnection();
        statement = connection.prepareStatement(CHECK_EXITS);
        statement.setString(1,user.getUname());
        statement.setString(2, user.getEmail());

        resultSet = statement.executeQuery();
        while (resultSet.next()){
            return new User(
                    resultSet.getInt(1),
                    resultSet.getString(2),
                    resultSet.getString(3),
                    resultSet.getString(4),
                    resultSet.getDate(5),
                    resultSet.getString(6),
                    resultSet.getString(7),
                    resultSet.getInt(8));
        }
        return null;
    }

    public List<User> getAllUser() throws SQLException {
        List<User> userList = new ArrayList<>();
        String SELECT_USER = "SELECT * FROM user";
        connection = getConnection();
        statement = connection.prepareStatement(SELECT_USER);
        resultSet = statement.executeQuery();
        while (resultSet.next()){
            userList.add(new User(
                    resultSet.getInt(1),
                    resultSet.getString(2),
                    resultSet.getString(3),
                    resultSet.getString(4),
                    resultSet.getDate(5),
                    resultSet.getString(6),
                    resultSet.getString(7),
                    resultSet.getInt(8)));
        }
        return userList;
    }

//    public static void main(String[] args) throws SQLException {
//        UserDAO userDAO = new UserDAO();
//        List<User> userList = userDAO.getAllUser();
//
//        for (User o:userList
//             ) {
//            System.out.println(o);
//        }
//    }

}
