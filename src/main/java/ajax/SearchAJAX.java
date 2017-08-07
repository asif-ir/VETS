package ajax;

import entities.Car;
import models.CarModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by vijayn on 8/6/2017.
 */
@WebServlet(name = "SearchAJAX", urlPatterns = "/search")
public class SearchAJAX extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Car> searchResults = new CarModel().searchCarByKeyword(req.getParameter("keyword"));
        PrintWriter out = resp.getWriter();

        if (searchResults.size() > 0) {
            for (Car car : searchResults) {
                out.println("<a href=\"view_car.jsp?id=" + car.getId() + ">\n" +
                        "                    <div class=\"row\" style=\"background-color: rgba(0, 0, 0, 0.2)\">\n" +
                        "                        <div class=\"col-md-4 col-sm-3 col-md-2\">\n" +
                        "                            <h4 style=\"color: #5BCAFF;\">" + car.getBrand_name() + "</h4><br>\n" +
                        "                            <img src=\"assets/cars/" + car.getId() + ".jpg\" alt=\"" + car.getBrand_name() + "\" class=\"img-thumbnail img-responsive\">\n" +
                        "                        </div>\n" +
                        "                        <div class=\"col-md-8 col-md-offset-1 text-right\" style=\"color: white\">\n" +
                        "                            <br><br>\n" +
                        "                            <button href=\"#fakelink\" class=\"btn btn-fill btn-primary\">Rs. "+ + car.getPrice() + "</button>\n" +
                        "                            <br><br>\n" +
                        "                            <p class=\"\"><em><strong>Manufacturing Year: </strong></em>" + car.getManufacturing_year() + "</p>\n" +
                        "                            <br>\n" +
                        "                            <p class=\"\"><em><strong>Engine: </strong></em>" + car.getEngine() + "</p>\n" +
                        "                            <br>\n" +
                        "                            <p class=\"\"><em><strong>Odometer Reading: </strong></em>" + car.getOdo_reading() + " kms</p>\n" +
                        "                        </div>\n" +
                        "                    </div>\n" +
                        "                </a>\n" +
                        "                <br>");
            }
        } else {
            out.print("<p style='color: white'>No Results</p>");
        }
    }
}
