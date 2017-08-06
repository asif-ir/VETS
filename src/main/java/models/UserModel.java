package models;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import entities.*;
import sun.misc.BASE64Encoder;
import utils.Constants;
import utils.GsonMessageBodyHandler;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.lang.reflect.Type;
import java.util.ArrayList;
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
                .post(Entity.json(user), Status.class);
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
        System.out.println("in authLogin");
        String authString = username + ":" + password;
        String authStringEnc =/* authString;*/new BASE64Encoder().encode(authString.getBytes());

        String result = client.target(URL_USER + Constants.URL_USER_AUTH)
                .request(MediaType.TEXT_PLAIN)//.header("Authorization","Basic "+authStringEnc)
                .post(Entity.json(authStringEnc),String.class);

        return result.equalsIgnoreCase("true");
    }

    public List<Car> getMyUnsoldCars(String username) {
        Type listType = new TypeToken<ArrayList<Car>>() {
        }.getType();
        ArrayList<Car> carList = new Gson().fromJson(
                client
                        .target(URL + "user/user-cars/"+username)
                        .request(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON)
                        .get(String.class)
                ,
                listType);

        return carList;
    }
}
