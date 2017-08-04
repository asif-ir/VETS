package models;

import entities.*;
import utils.GsonMessageBodyHandler;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.MediaType;

/**
 * Created by rawlooa on 8/4/2017.
 */
public class UserModel {
    private Client client = ClientBuilder.newClient().register(GsonMessageBodyHandler.class);

    public User getUser(long id) {
        User user  = client
                .target("http://localhost:8080/user/" + id)
                .request(MediaType.APPLICATION_JSON)
                .get(User.class);

        return user;
    }
}
