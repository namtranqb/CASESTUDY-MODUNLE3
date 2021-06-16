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

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    ProductDAO productDAO = new ProductDAO();
    UserDAO userDAO = new UserDAO();
    CategoryDAO categoryDAO = new CategoryDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] arr = request.getCookies();
        if(arr != null){
            for (Cookie row: arr) {
                if(row.getName().equals("uname")){
                    request.setAttribute("username",row.getValue());
                }
                if(row.getName().equals("pword")){
                    request.setAttribute("pass",row.getValue());
                }
            }
        }
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            loginUser(request,response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private void loginUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String username = request.getParameter("uname");
        String password = request.getParameter("password");
        User user = userDAO.loginUser(username,password);
        List<Category> categoryList = categoryDAO.getAllCategory();
        if(user == null){
            request.setAttribute("message","Login error! Please again");
            request.getRequestDispatcher("home.jsp").forward(request,response);
        } else {
            Cookie uname = new Cookie("username",username);
            Cookie pword = new Cookie("password",password);
            uname.setMaxAge(60);
            pword.setMaxAge(60);
            response.addCookie(uname);
            response.addCookie(pword);

            HttpSession session = request.getSession();
            session.setAttribute("account",user);
            session.setAttribute("loadCategory",categoryList);
            if(user.getAccess() == 100){
                request.setAttribute("message","Adminlogin");
                request.getRequestDispatcher("management.jsp").forward(request,response);
            }else {
                    response.sendRedirect("/home");
                }

        }
    }

}
