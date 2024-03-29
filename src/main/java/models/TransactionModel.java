package models;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import entities.*;
import utils.Constants;
import utils.GsonMessageBodyHandler;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

import static utils.Constants.URL_TRANS_CREATE;

/**
 * Created by rawlooa on 8/4/2017.
 */
public class TransactionModel {
    private Client client = ClientBuilder.newClient().register(GsonMessageBodyHandler.class);
    private String URL_TRANSACTION = Constants.URL + Constants.URL_TRANSACTION;

    public Status addTransaction(Transaction transaction) {
        Type type = new TypeToken<Status>() {
        }.getType();
        Status status = new Gson().fromJson(
                client
                        .target(URL_TRANSACTION+URL_TRANS_CREATE)
                        .request(MediaType.TEXT_PLAIN)
                        .accept(MediaType.APPLICATION_JSON)
                        .post(Entity.json(transaction),String.class)
                ,
                type);
        return status;
    }

    public Transaction getTransaction(long transaction_id) {
        Transaction transaction = client
                .target(URL_TRANSACTION + Constants.URL_TRANS_TRANSID + transaction_id)
                .request(MediaType.APPLICATION_JSON)
                .get(Transaction.class);

        return transaction;
    }

    public List<Transaction> getTransaction() {
        Type listType = new TypeToken<ArrayList<Transaction>>() {
        }.getType();
        ArrayList<Transaction> transactionList = new Gson().fromJson(
                client
                        .target(URL_TRANSACTION + Constants.URL_TRANS_LIST)
                        .request(MediaType.TEXT_PLAIN)
                        .accept(MediaType.APPLICATION_JSON)
                        .get(String.class)
                ,
                listType);
        return transactionList;
    }

    public Status deleteTransaction(long transaction_id) {
        Status status = client
                .target(URL_TRANSACTION + Constants.URL_TRANS_DELETE + transaction_id)
                .request(MediaType.APPLICATION_JSON)
                .get(Status.class);

        return status;
    }
}