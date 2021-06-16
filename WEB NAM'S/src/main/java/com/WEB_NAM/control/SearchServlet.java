package com.WEB_NAM.control;

import com.WEB_NAM.DAO.ProductDAO;
import com.WEB_NAM.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet {
    ProductDAO productDAO = new ProductDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void searchProductByKeyword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        List<Product> lists = productDAO.searchProduct(keyword);
        request.setAttribute("productList",lists);
        request.setAttribute("keyword",keyword);
        request.getRequestDispatcher("shop.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        searchProductByKeyword(request,response);
    }
}
