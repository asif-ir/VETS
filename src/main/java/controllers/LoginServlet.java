package controllers;

import models.UserModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        System.out.println(username+":"+password);
        if (new UserModel().authLogin(username, password)) {
            HttpSession session = req.getSession();
            session.setAttribute("username", username);
            req.setAttribute("message", "Logged in Successfully");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } else {
            req.setAttribute("message", "Error in Login");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }

    }
}
