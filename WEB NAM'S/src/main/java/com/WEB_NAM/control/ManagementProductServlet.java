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

@WebServlet(name = "ManagementProductServlet", value = "/product")
public class ManagementProductServlet extends HttpServlet {
    ProductDAO productDAO = new ProductDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "createProduct":
                createForm(request, response);
                break;
            case "search":
                searchByKeyword(request, response);
                break;
            case "filter":
                filterByCategoryName(request, response);
                break;
            case "editProduct":
                editForm(request, response);
                break;
            case "deleteProduct":
                try {
                    deleteProduct(request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            default:
                getAllProduct(request, response);
                break;
        }
    }

    private void filterByCategoryName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cname =(request.getParameter("cname"));
        List<Product> products = productDAO.getProductByCName(cname);
        request.setAttribute("productList",products);
        request.getRequestDispatcher("management.jsp").forward(request, response);
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
            int id = Integer.parseInt(request.getParameter("pid"));
            productDAO.deleteProduct(id);
            List<Product> productList = productDAO.getAllProduct();
            request.setAttribute("productList", productList);
            request.getRequestDispatcher("management.jsp").forward(request, response);
        }

        private void editForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int pid = Integer.parseInt(request.getParameter("pid"));
            Product product = productDAO.getProductByID(pid);
            request.setAttribute("editP","editProduct");
            request.setAttribute("pid",product.getPid());
            request.setAttribute("pcode",product.getPcode());
            request.setAttribute("pname",product.getPname());
            request.setAttribute("price",product.getPrice());
            request.setAttribute("quantity",product.getQuantity());
            request.setAttribute("pimage",product.getPimage());
            request.setAttribute("color",product.getColor());
            request.setAttribute("descreption",product.getDescription());
            request.getRequestDispatcher("management.jsp").forward(request, response);
        }

        private void searchByKeyword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String keyword = request.getParameter("keyword");
            List<Product> lists = productDAO.searchProduct(keyword);
            request.setAttribute("productList",lists);
            request.setAttribute("keyword",keyword);
            request.getRequestDispatcher("management.jsp").forward(request,response);


        }

        private void createForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setAttribute("createP","createProduct");
            request.getRequestDispatcher("management.jsp").forward(request,response);

        }

        private void getAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            List<Product> productList = productDAO.getAllProduct();
            request.setAttribute("productList",productList);
            request.getRequestDispatcher("management.jsp").forward(request,response);
        }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "createProduct":
                try {
                    insertProduct(request,response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "editProduct":
                try {
                    updateProduct(request,response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
        }
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String pcode = request.getParameter("pcode");
        String pname = request.getParameter("pname");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String pimage = request.getParameter("pimage");
        String color = request.getParameter("color");
        String descreption = request.getParameter("description");
        int cid = Integer.parseInt(request.getParameter("cname"));
        Product product = new Product(pcode,pname,price,quantity,pimage,color,descreption);
        productDAO.updateProduct(product,cid);
        List<Product> productList = productDAO.getAllProduct();
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("management.jsp").forward(request,response);

    }

    private void insertProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String pcode = request.getParameter("pcode");
        String pname = request.getParameter("pname");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String pimage = request.getParameter("pimage");
        String color = request.getParameter("color");
        String descreption = request.getParameter("description");
        int cid = Integer.parseInt(request.getParameter("cname"));
        Product product = new Product(pcode,pname,price,quantity,pimage,color,descreption);
        productDAO.insertProduct(product,cid);
        List<Product> productList = productDAO.getAllProductDESC();
        request.setAttribute("productList",productList);
        request.getRequestDispatcher("management.jsp").forward(request,response);
    }
}


