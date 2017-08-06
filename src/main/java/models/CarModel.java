package models;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;
import entities.Car;
import entities.Status;
import utils.GsonMessageBodyHandler;

import com.sun.jersey.api.client.Client;
//import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by rawlooa on 8/4/2017.
 */
public class CarModel {
    private javax.ws.rs.client.Client client = ClientBuilder.newClient().register(GsonMessageBodyHandler.class);
    private String URL = "http://localhost:8080/";

    public Car getCar(long id) {
        Car car = client
                .target(URL + "car/" + id)
                .request(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .get(Car.class);

        System.out.println(car.getBrand_name());

        return car;
    }

    public List<Car> getCarList() {
        Type listType = new TypeToken<ArrayList<Car>>() {
        }.getType();
        ArrayList<Car> carList = new Gson().fromJson(
                client
                        .target(URL + "car/list")
                        .request(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON)
                        .get(String.class)
                ,
                listType);

        return carList;
    }

    public List<Car> getCarList(String type) {
        Type listType = new TypeToken<ArrayList<Car>>() {
        }.getType();
        ArrayList<Car> carList = new Gson().fromJson(
                client
                        .target(URL + "car/list-"+type.toLowerCase())
                        .request(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON)
                        .get(String.class)
                ,
                listType);

        return carList;
    }

    public Status addCar(Car car) {
        Status status = client
                .target(URL + "car/create")
                .request(MediaType.APPLICATION_JSON)
                .post(Entity.json(car), Status.class);

        return status;
    }

    public Status deleteCar(long id) {
        Status status = client
                .target(URL + "car/delete" + id)
                .request(MediaType.TEXT_PLAIN)
                .accept(MediaType.APPLICATION_JSON)
                .get(Status.class);

        return status;
    }
}