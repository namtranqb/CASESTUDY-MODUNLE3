package com.WEB_NAM.control;

import com.WEB_NAM.DAO.ProductDAO;
import com.WEB_NAM.DAO.UserDAO;
import com.WEB_NAM.model.User;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;


@WebServlet(name = "RegisterServlet", value = "/signup")
public class SignUpServlet extends HttpServlet {
    UserDAO userDAO = new UserDAO();
    ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            register(request,response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");
        String cof_pass = request.getParameter("confirm_password");
        String fullname = request.getParameter("fullname");
        Date dob = Date.valueOf(request.getParameter("dob"));
        String email = request.getParameter("email");
        User user = new User(uname,password,fullname,dob,email);
        if(userDAO.checkExist(user) == null){
            userDAO.registerUser(user);
            HttpSession session = request.getSession();
            session.setAttribute("succes",user);
            request.setAttribute("message2","Register succes! Login please ");
            request.getRequestDispatcher("home.jsp").forward(request,response);
        }else{
            request.setAttribute("message1","Username or email is exists !");
            request.getRequestDispatcher("home.jsp").forward(request,response);
        }

    }
}
