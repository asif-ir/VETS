package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import entities.Car;
import entities.Fuel;
import entities.Status;
import models.CarModel;
import models.UserModel;

/**
 * Created by rawlooa on 8/4/2017.
 */

@WebServlet(name = "AddCarServlet", urlPatterns = {"/add-car"})
public class AddCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);

        System.out.println("");

        Car car = new Car();
        car.setModel_name(req.getParameter("model_name"));
        System.out.println("model_name" + req.getParameter("model_name"));

        car.setBrand_name(req.getParameter("brand_name"));
        System.out.println("brand_name " + req.getParameter("brand_name"));

        car.setEngine(req.getParameter("engine"));
        System.out.println("engine " + req.getParameter("engine"));

        car.setCity(req.getParameter("city"));
        System.out.println("City " + req.getParameter("city"));

        car.setFuel(req.getParameter("fuel"));
        System.out.println("fuel " + req.getParameter("fuel"));

        car.setOdo_reading(Integer.parseInt(req.getParameter("odo_reading")));
        System.out.println("odo_reading " + Integer.parseInt(req.getParameter("odo_reading")));

        car.setColor(req.getParameter("color"));
        System.out.println("color " + req.getParameter("color"));

        car.setNo_of_owners(Integer.parseInt(req.getParameter("no_of_owners")));
        System.out.println("no_of_owners " + Integer.parseInt(req.getParameter("no_of_owners")));

        car.setPower_steering(Boolean.parseBoolean(req.getParameter("power_steering")));
        System.out.println("power_steering " + Boolean.parseBoolean(req.getParameter("power_steering")));

        car.setInsurance(req.getParameter("insurance"));
        System.out.println("insurance " + req.getParameter("insurance"));

        car.setInsurance_expiry(req.getParameter("insurance_expiry"));
        System.out.println("insurance_expiry " + req.getParameter("insurance_expiry"));

        car.setManufacturing_year(Integer.parseInt(req.getParameter("manufacturing_year")));
        System.out.println("manufacturing_year" + Integer.parseInt(req.getParameter("manufacturing_year")));

        car.setRegistration_date(req.getParameter("registration_date"));
        System.out.println("registration date " + req.getParameter("registration_date"));

        car.setRegistration_type(req.getParameter("registration_type"));
        System.out.println("registration_type " + req.getParameter("registration_type"));

        car.setRto_location(req.getParameter("rto_location"));
        System.out.println("rto_location "+req.getParameter("rto_location"));

        car.setMileage(Double.parseDouble(req.getParameter("mileage")));
        System.out.println("mileage "+Double.parseDouble(req.getParameter("mileage")));

        car.setSeating_capacity(Integer.parseInt(req.getParameter("seating_capacity")));
        System.out.println("seating_capacity "+Integer.parseInt(req.getParameter("seating_capacity")));

        car.setOwned_by(new UserModel().getUserId((String) session.getAttribute("username")));
        System.out.println("username " + new UserModel().getUserId((String) session.getAttribute("username")));

        car.setPrice(Double.parseDouble(req.getParameter("price")));
        System.out.println("price "+Double.parseDouble(req.getParameter("price")) );

        System.out.println("Car User Id "+car.getOwned_by());

        Status hit = new CarModel().addCar(car);

        if (hit.getCode() == 1) {
            req.setAttribute("message", "Added Successfully");
            req.getRequestDispatcher("add_car.jsp").forward(req, resp);
        } else {
            req.setAttribute("message", "Error in adding Vehicle");
            req.getRequestDispatcher("add_car.jsp").forward(req, resp);
        }

    }
}
