package ajax;

import entities.Car;
import entities.Fuel;
import entities.Status;
import models.CarModel;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by vijayn on 8/6/2017.
 */
@WebServlet(name = "CompareListAJAX", urlPatterns = "/compare-list")
public class CompareListAJAX extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        Car car1 = new CarModel().getCar(Long.parseLong(req.getParameter("car1")));
        Car car2 = new CarModel().getCar(Long.parseLong(req.getParameter("car2")));

        System.out.println(car1.getBrand_name());


        out.print("<table class=\"table table-stripped table-hover\"\n" +
                "                               style=\"color: white; background-color: rgba(0,0,0,0.3)\">\n" +
//                "                            <tr>\n" +
//                "                                <th>Model Name :</th>\n" +
//                "                                <td><img src='assets/cars/"+ car1.getId() +".jpg' alt='" + car1.getId() + "class='img-thumbnail img-responsive'><br>" + "\n" +
//                "                                </td>\n" +
//                "                                <td><img src='assets/cars/"+ car2.getId() +".jpg' alt='" + car2.getId() + "class='img-thumbnail img-responsive'><br>" + "\n" +
//                "                                </td>\n" +
//                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Model Name :</th>\n" +
                "                                <td>" + car1.getModel_name() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getModel_name() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Brand Name :</th>\n" +
                "                                <td>" + car1.getBrand_name() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getBrand_name() + "\n" +
                "                                </td>\n" +
                "                            <tr/>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Engine :</th>\n" +
                "                                <td>" + car1.getEngine() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getEngine() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>City :</th>\n" +
                "                                <td>" + car1.getCity() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getCity() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Fuel :</th>\n" +
                "                                <td>" + car1.getFuel() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getFuel() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Odometer Reading :</th>\n" +
                "                                <td>" + car1.getOdo_reading() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getOdo_reading() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Color :</th>\n" +
                "                                <td>" + car1.getColor() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getColor() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Power Steering :</th>\n" +
                "                                <td>" + car1.isPower_steering() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.isPower_steering() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Insurance :</th>\n" +
                "                                <td>" + car1.getInsurance() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getInsurance() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Manufacturing Year :</th>\n" +
                "                                <td>" + car1.getManufacturing_year() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getManufacturing_year() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Mileage :</th>\n" +
                "                                <td>" + car1.getMileage() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getMileage() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "\n" +
                "                            <tr>\n" +
                "                                <th>Seating capacity :</th>\n" +
                "                                <td>" + car1.getSeating_capacity() + "\n" +
                "                                </td>\n" +
                "                                <td>" + car2.getSeating_capacity() + "\n" +
                "                                </td>\n" +
                "                            </tr>\n" +
                "                        </table>");
    }
}
