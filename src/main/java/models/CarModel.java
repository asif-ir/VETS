package models;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;
import entities.Car;
import entities.Status;
import entities.User;
import utils.Constants;
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
    private String URL = Constants.URL;

    public Car getCar(long id) {
        Car car = client
                .target(URL + "car/" + id)
                .request(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .get(Car.class);

        return car;
    }

    public Status validateCar(Long id, Double price) {
        Status status = client
                .target(URL + "car/" + id + "/" + price)
                .request(MediaType.TEXT_PLAIN)
                .accept(MediaType.APPLICATION_JSON)
                .get(Status.class);

        return status;
    }

    public List<Car> searchCarByKeyword(String keyword) {
        Type listType = new TypeToken<ArrayList<Car>>() {
        }.getType();
        ArrayList<Car> carList = new Gson().fromJson(
                client
                        .target(URL + "car/search/" + keyword)
                        .request(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON)
                        .get(String.class)
                ,
                listType);

        return carList;
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
                        .target(URL + "car/list-" + type.toLowerCase())
                        .request(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON)
                        .get(String.class)
                ,
                listType);

        return carList;
    }

    public List<Car> getUsedCarList(Integer top) {
        Type listType = new TypeToken<ArrayList<Car>>() {
        }.getType();
        ArrayList<Car> carList = new Gson().fromJson(
                client
                        .target(URL + "car/list_index_used?top=" + top.toString())
                        .request(MediaType.TEXT_PLAIN)
                        .accept(MediaType.APPLICATION_JSON)
                        .get(String.class)
                ,
                listType);

        return carList;
    }

    public Long getUserIdByCarId(long car_id) {
        Long user_id = client
                .target(URL + "car/getUserId?car_id=" + car_id)
                .request(MediaType.APPLICATION_JSON)
                .get(Long.class);

        return user_id;
    }

    public List<Car> getNewCarList(Integer top) {
        Type listType = new TypeToken<ArrayList<Car>>() {
        }.getType();
        ArrayList<Car> carList = new Gson().fromJson(
                client
                        .target(URL + "car/list_index_new?top=" + top.toString())
                        .request(MediaType.TEXT_PLAIN)
                        .accept(MediaType.APPLICATION_JSON)
                        .get(String.class)
                ,
                listType);

        return carList;
    }

    public Status addCar(Car car) {
        System.out.println("Path : "+URL+"car/create");
        Status status = client
                .target(URL + "car/create")
                .request(MediaType.APPLICATION_JSON)
                .post(Entity.json(car), Status.class);

        return status;
    }

    public Status deleteCar(long id) {
        Status status = client
                .target(URL + "car/delete/" + id)
                .request(MediaType.TEXT_PLAIN)
                .accept(MediaType.APPLICATION_JSON)
                .get(Status.class);

        return status;
    }
}