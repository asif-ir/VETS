package ajax;

import models.CarModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by mahapata on 8/10/2017.
 */
@WebServlet(name = "CarApprovalAJAX", urlPatterns = "/car-approval")
public class CarApprovalAJAX extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        Double price = Double.parseDouble(req.getParameter("price"));

        new CarModel().validateCar(id, price);
    }
}
