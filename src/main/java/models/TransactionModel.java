package models;

import entities.*;
import utils.Constants;
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
    private String URL_TRANSACTION = Constants.URL + Constants.URL_TRANSACTION;

    public Status addTransaction(Transaction transaction) {

        Status status = client
                .target(URL_TRANSACTION + Constants.URL_TRANS_CREATE)
                .request(MediaType.APPLICATION_JSON)
                .accept(MediaType.TEXT_PLAIN)
                .post(Entity.json(transaction), Status.class);

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
        List<Transaction> transactionList = client
                .target(URL_TRANSACTION + Constants.URL_TRANS_LIST)
                .request(MediaType.APPLICATION_JSON)
                .get(List.class);

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
