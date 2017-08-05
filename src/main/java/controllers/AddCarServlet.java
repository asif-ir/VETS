package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import models.*;

/**
 * Created by rawlooa on 8/4/2017.
 */

@WebServlet(name = "AddCarServlet",urlPatterns = {"/addCar"})
public class AddCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean hit=new models.CarModel().addCar();

        if(hit){
            req.setAttribute("message","Added Successfully");
        }
        else {
            req.setAttribute("message","Error in adding Vehicle");
        }
        req.getRequestDispatcher("index.jsp").forward(req,resp);

    }
}
