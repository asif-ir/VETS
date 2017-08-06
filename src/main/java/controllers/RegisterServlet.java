package controllers;

import entities.Status;
import entities.User;
import models.UserModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User();
        user.setFirst_name(req.getParameter("first_name"));
        user.setLast_name(req.getParameter("last_name"));
        user.setUsername(req.getParameter("username"));
        user.setEmail(req.getParameter("email"));
        user.setPhone(req.getParameter("phone"));
        user.setPassword(req.getParameter("password"));
        Status status = new UserModel().addUser(user);

        if (status.getCode() == 1) {
            req.setAttribute("message", "Registration Successful");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else {
            req.setAttribute("message", "Registration Failed!");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
    }
}
