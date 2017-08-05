package entities;

import javax.persistence.Column;
import java.util.Date;

/**
 * Created by rawlooa on 8/4/2017.
 */
public class Car {
    private int id;

    private String model_name;

    private String brand_name;

    private String engine;

    private String city;

    private Fuel fuel;

    private String odo_reading;

    private String color;

    private int no_of_owners;

    private boolean power_steering;

    private String insurance;

    private Date insurance_expiry;

    private int manufacturing_year;

    private Date registration_date;

    private String registration_type;

    private String rto_location;

    private Date date_of_reg_on_website;

    private double mileage;

    private int seating_capacity;

    private int owned_by;


    public String getModel_name() {
        return model_name;
    }

    public void setModel_name(String model_name) {
        this.model_name = model_name;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Fuel getFuel() {
        return fuel;
    }

    public void setFuel(Fuel fuel) {
        this.fuel = fuel;
    }

    public String getOdo_reading() {
        return odo_reading;
    }

    public void setOdo_reading(String odo_reading) {
        this.odo_reading = odo_reading;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getNo_of_owners() {
        return no_of_owners;
    }

    public void setNo_of_owners(int no_of_owners) {
        this.no_of_owners = no_of_owners;
    }

    public boolean isPower_steering() {
        return power_steering;
    }

    public void setPower_steering(boolean power_steering) {
        this.power_steering = power_steering;
    }

    public String getInsurance() {
        return insurance;
    }

    public void setInsurance(String insurance) {
        this.insurance = insurance;
    }

    public Date getInsurance_expiry() {
        return insurance_expiry;
    }

    public void setInsurance_expiry(Date insurance_expiry) {
        this.insurance_expiry = insurance_expiry;
    }

    public int getManufacturing_year() {
        return manufacturing_year;
    }

    public void setManufacturing_year(int manufacturing_year) {
        this.manufacturing_year = manufacturing_year;
    }

    public Date getRegistration_date() {
        return registration_date;
    }

    public void setRegistration_date(Date registration_date) {
        this.registration_date = registration_date;
    }

    public String getRegistration_type() {
        return registration_type;
    }

    public void setRegistration_type(String registration_type) {
        this.registration_type = registration_type;
    }

    public String getRto_location() {
        return rto_location;
    }

    public void setRto_location(String rto_location) {
        this.rto_location = rto_location;
    }

    public Date getDate_of_reg_on_website() {
        return date_of_reg_on_website;
    }

    public void setDate_of_reg_on_website(Date date_of_reg_on_website) {
        this.date_of_reg_on_website = date_of_reg_on_website;
    }

    public double getMileage() {
        return mileage;
    }

    public void setMileage(double mileage) {
        this.mileage = mileage;
    }

    public int getSeating_capacity() {
        return seating_capacity;
    }

    public void setSeating_capacity(int seating_capacity) {
        this.seating_capacity = seating_capacity;
    }

    public int getOwned_by() {
        return owned_by;
    }

    public void setOwned_by(int owned_by) {
        this.owned_by = owned_by;
    }
}
