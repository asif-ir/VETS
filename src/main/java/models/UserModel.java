package models;

import com.google.gson.JsonObject;
import entities.*;
import utils.Constants;
import utils.GsonMessageBodyHandler;

import javax.jws.soap.SOAPBinding;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * Created by rawlooa on 8/4/2017.
 */
public class UserModel {
    private Client client = ClientBuilder.newClient().register(GsonMessageBodyHandler.class);
    private String URL = Constants.URL;

    public User getUser(long id) {
        User user = client
                .target(URL + Constants.URL_USER + id)
                .request(MediaType.APPLICATION_JSON)
                .get(User.class);

        return user;
    }


    public List<User> getUsers() {
        List<User> userList = client
                .target(URL + Constants.URL_USER_LIST)
                .request(MediaType.APPLICATION_JSON)
                .get(List.class);
        return userList;
    }

    public Status addUser(User user) {

        Status status = client
                .target(URL + Constants.URL_CREATE_USER)
                .request(MediaType.APPLICATION_JSON)
                .accept(MediaType.TEXT_PLAIN)
                .post(Entity.json(user), Status.class);

        return status;
    }

    public Status deleteUser(long id) {
        Status status = client
                .target(URL + Constants.URL_DELETE_USER + id)
                .request(MediaType.TEXT_PLAIN).get(Status.class);

        return status;
    }
}
