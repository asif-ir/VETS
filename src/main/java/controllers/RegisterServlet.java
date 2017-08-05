package controllers;

import entities.Status;
import entities.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by rawlooa on 8/4/2017.
 */
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Status status=new User().addUser();

        if(status.getCode()==1){
            req.setAttribute("message","User Added Successfully!!!");
        }
        else {
            req.setAttribute("message","Error in adding user");
        }
    }
}
