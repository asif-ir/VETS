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

/**
 * Created by rawlooa on 8/4/2017.
 */
@WebServlet(name = "AddCarServlet", urlPatterns = {"/add-user"})
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User();
        user.setFirst_name(req.getParameter("first_name"));
        user.setFirst_name(req.getParameter("last_name"));
        user.setFirst_name(req.getParameter("username"));
        user.setFirst_name(req.getParameter("email"));
        user.setFirst_name(req.getParameter("phone"));

        Status status=new UserModel().addUser(user);

        if(status.getCode()==1){
            req.setAttribute("message","User Added Successfully!!!");
        }
        else {
            req.setAttribute("message","Error in adding user");
        }
    }
}
