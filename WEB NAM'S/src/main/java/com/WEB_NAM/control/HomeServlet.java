package com.WEB_NAM.control;

import com.WEB_NAM.DAO.ProductDAO;
import com.WEB_NAM.DAO.UserDAO;
import com.WEB_NAM.model.Product;
import com.WEB_NAM.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {
    ProductDAO productDAO = new ProductDAO();
    UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        listBestProduct(request,response);

    }

    private void listBestProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = productDAO.getBestProduct();
        request.setAttribute("listP",list);
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
