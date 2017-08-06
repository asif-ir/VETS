package entities;

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
    private String fuel;
    private int odo_reading;
    private String color;
    private int no_of_owners;
    private boolean power_steering;
    private String insurance;
    private String insurance_expiry;
    private int manufacturing_year;
    private String registration_date;
    private String registration_type;
    private String rto_location;
//    private Date date_of_reg_on_website;
    private double mileage;
    private int seating_capacity;
    private long owned_by;
    private double price;

    public Car() {
    }

    public Car(String model_name, String brand_name, String engine, String city, String fuel, int odo_reading, String color, int no_of_owners, boolean power_steering, String insurance, String insurance_expiry, int manufacturing_year, String registration_type, String rto_location, Double mileage, int seating_capacity, long owned_by, double price) {
        this.model_name = model_name;
        this.brand_name = brand_name;
        this.engine = engine;
        this.city = city;
        this.fuel = fuel;
        this.odo_reading = odo_reading;
        this.color = color;
        this.no_of_owners = no_of_owners;
        this.power_steering = power_steering;
        this.insurance = insurance;
        this.insurance_expiry = insurance_expiry;
        this.manufacturing_year = manufacturing_year;
        this.registration_type = registration_type;
        this.rto_location = rto_location;
//        this.date_of_reg_on_website = date_of_reg_on_website;
        this.mileage = mileage;
        this.seating_capacity = seating_capacity;
        this.owned_by = owned_by;
        this.price = price;
    }

    public long getOwned_by() {
        return owned_by;
    }

    public void setOwned_by(int owned_by) {
        this.owned_by = owned_by;
    }

    public int getSeating_capacity() {
        return seating_capacity;
    }

    public void setSeating_capacity(int seating_capacity) {
        this.seating_capacity = seating_capacity;
    }

    public double getMileage() {
        return mileage;
    }

    public void setMileage(double mileage) {
        this.mileage = mileage;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public String getRegistration_date() {
        return registration_date;
    }

    public void setRegistration_date(String registration_date) {
        this.registration_date = registration_date;
    }

    public String getRto_location() {
        return rto_location;
    }

    public void setRto_location(String rto_location) {
        this.rto_location = rto_location;
    }

    public String getRegistration_type() {
        return registration_type;
    }

    public void setRegistration_type(String registration_type) {
        this.registration_type = registration_type;
    }

    public String getRegistration_data() {
        return registration_date;
    }

    public void setRegistration_data(String registration_data) {
        this.registration_date = registration_data;
    }

    public int getManufacturing_year() {
        return manufacturing_year;
    }

    public void setManufacturing_year(int manufacturing_year) {
        this.manufacturing_year = manufacturing_year;
    }

    public String getInsurance_expiry() {
        return insurance_expiry;
    }

    public void setInsurance_expiry(String insurance_expiry) {
        this.insurance_expiry = insurance_expiry;
    }

    public String getInsurance() {
        return insurance;
    }

    public void setInsurance(String insurance) {
        this.insurance = insurance;
    }

    public boolean isPower_steering() {
        return power_steering;
    }

    public void setPower_steering(boolean power_steering) {
        this.power_steering = power_steering;
    }

    public int getNo_of_owners() {
        return no_of_owners;
    }

    public void setNo_of_owners(int no_of_owners) {
        this.no_of_owners = no_of_owners;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getOdo_reading() {
        return odo_reading;
    }

    public void setOdo_reading(int odo_reading) {
        this.odo_reading = odo_reading;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void commit() {

    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }

    public String getModel_name() {
        return model_name;
    }

    public void setModel_name(String model_name) {
        this.model_name = model_name;
    }

    public void setOwned_by(long owned_by) {
        this.owned_by = owned_by;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}

