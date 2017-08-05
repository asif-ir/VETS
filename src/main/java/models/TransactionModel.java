package models;

import com.sun.jersey.api.client.ClientResponse;
import entities.*;
import utils.GsonMessageBodyHandler;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * Created by rawlooa on 8/4/2017.
 */
public class TransactionModel {
    private Client client = ClientBuilder.newClient().register(GsonMessageBodyHandler.class);

    public Status addTransaction(Transaction transaction){

        Status status=client
                .target("http://localhost:8080/create")
                .request(MediaType.APPLICATION_JSON)
                .accept(MediaType.TEXT_PLAIN)
                .post(Entity.json(transaction),Status.class);

        return status;
    }

    public Transaction getTransaction(long transaction_id) {
        Transaction transaction  = client
                .target("http://localhost:8080/transactionid/" + transaction_id)
                .request(MediaType.APPLICATION_JSON)
                .get(Transaction.class);

        return transaction;
    }

    public List<Transaction> getTransaction( ){
        List<Transaction> transactionList = client
                .target("http://localhost:8080/list")
                .request(MediaType.APPLICATION_JSON)
                .get(List.class);

        return  transactionList;

    }

    public Status deleteTransaction(long transaction_id) {
        Status status  = client
                .target("http://localhost:8080/delete/{transactionid}" + transaction_id)
                .request(MediaType.APPLICATION_JSON)
                .get(Status.class);

        return status;
    }

}
