package com.WEB_NAM.control;

import com.WEB_NAM.DAO.CategoryDAO;
import com.WEB_NAM.DAO.ProductDAO;
import com.WEB_NAM.DAO.UserDAO;
import com.WEB_NAM.model.Category;
import com.WEB_NAM.model.Product;
import com.WEB_NAM.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ManagementServlet", value = "/management")
public class ManagementServlet extends HttpServlet {
    ProductDAO productDAO = new ProductDAO();
    UserDAO userDAO = new UserDAO();
    CategoryDAO categoryDAO = new CategoryDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "product":
                getAllProduct(request,response);
                break;
            case "category":
                getAllCategory(request,response);
                break;
            case "account":
                try {
                    getAllUser(request,response);

                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            default:
                try {
                    homeManagement(request,response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;

        }

    }

    private void homeManagement(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Product> productList = productDAO.getAllProduct();
        List<Category> categoryList = categoryDAO.getAllCategory();
        request.getRequestDispatcher("management.jsp").forward(request,response);
    }

    private void getAllUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<User> userList = userDAO.getAllUser();
        request.setAttribute("userList",userList);
        request.getRequestDispatcher("management.jsp").forward(request,response);
    }

    private void getAllCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categoryList = categoryDAO.getAllCategory();
        request.setAttribute("categoryList",categoryList);
        request.getRequestDispatcher("management.jsp").forward(request,response);
    }
    private void getAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = productDAO.getAllProduct();
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("management.jsp").forward(request,response);

    }




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
