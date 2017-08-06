package models;

import entities.*;
import sun.misc.BASE64Encoder;
import utils.Constants;
import utils.GsonMessageBodyHandler;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

import static utils.Constants.URL;

public class UserModel {
    private Client client = ClientBuilder.newClient().register(GsonMessageBodyHandler.class);
    private String URL_USER = URL + Constants.URL_USER;

    public User getUser(long id) {
        User user = client
                .target(URL_USER + Constants.URL_USERNAME + id)
                .request(MediaType.APPLICATION_JSON)
                .get(User.class);

        return user;
    }

    public List<User> getUsers() {
        List<User> userList = client
                .target(URL_USER + Constants.URL_USER_LIST)
                .request(MediaType.APPLICATION_JSON)
                .get(List.class);
        return userList;
    }

    public Status addUser(User user) {
        System.out.println(URL_USER + Constants.URL_USER_CREATE);
        Status status = client
                .target(URL_USER + Constants.URL_USER_CREATE)
                .request(MediaType.APPLICATION_JSON)
                .post(Entity.json(user),Status.class);
        System.out.println("status");
       return status;
       //return new Status(Integer.parseInt(status.substring(0,1)),status.substring(2));
    }

    public Status deleteUser(long id) {
        Status status = client
                .target(URL_USER + Constants.URL_USER_DELETE + id)
                .request(MediaType.TEXT_PLAIN).get(Status.class);

        return status;
    }

    public boolean authLogin(String username, String password) {
        String authString = username + ":" + password;
        String autjStringEnc = new BASE64Encoder().encode(authString.getBytes());

        String result = client.target(URL_USER + Constants.URL_USER_AUTH)
                .request(MediaType.TEXT_PLAIN).post(Entity.json(autjStringEnc), String.class);

        return result.equalsIgnoreCase("true");
    }

    public List<Car> getMyUnsoldCars(String username) {
        List<Car> carList = (List<Car>) client
                .target(URL + "user/my-cars/" + username)
                .request(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .get(Car.class);

        return carList;
    }
}
