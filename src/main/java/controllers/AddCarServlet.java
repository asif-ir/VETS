package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import entities.Car;
import entities.Fuel;
import entities.Status;
import models.*;

/**
 * Created by rawlooa on 8/4/2017.
 */

@WebServlet(name = "AddCarServlet",urlPatterns = {"/addCar"})
public class AddCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Car car = new Car();
        car.setModel_name(req.getParameter("model_name"));
        car.setBrand_name(req.getParameter("brand_name"));
        car.setEngine(req.getParameter("engine"));
        car.setCity(req.getParameter("city"));
        switch (Integer.parseInt(req.getParameter("fuel"))) {
            case 0:
                car.setFuel(Fuel.petrol);
                break;
            case 1:
                car.setFuel(Fuel.diesel );
                break;
            case 2:
                car.setFuel(Fuel.cng);
                break;
            case 4:
                car.setFuel(Fuel.lpg);
                break;
            default:
                car.setFuel(Fuel.others);
                break;
        }
        car.setOdo_reading(req.getParameter("odo_reading"));
        car.setColor(req.getParameter("color"));
        car.setNo_of_owners(Integer.parseInt(req.getParameter("no_of_owners")));
        car.setPower_steering(Boolean.parseBoolean(req.getParameter("power_steering")));
        car.setInsurance(req.getParameter("insurance"));
        String startDateString = req.getParameter("date_of_reg_on_website");
        DateFormat dateofreg = new SimpleDateFormat("MM/dd/yyyy");
        try {
            Date dateOfRegOnWebsite = dateofreg.parse(startDateString);
        car.setDate_of_reg_on_website(dateOfRegOnWebsite);
        }
        catch (ParseException e) {
            e.printStackTrace();
        }
        car.setMileage(Double.parseDouble(req.getParameter("mileage")));
        car.setSeating_capacity(Integer.parseInt(req.getParameter("seating_capacity")));
        car.setOwned_by(Integer.parseInt(req.getParameter("owned_by")));
        car.setColor(req.getParameter("color"));

        Status hit=new models.CarModel().addCar(car);

        if(hit.getCode() == 1){
            req.setAttribute("message","Added Successfully");
        }
        else {
            req.setAttribute("message","Error in adding Vehicle");
        }
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
