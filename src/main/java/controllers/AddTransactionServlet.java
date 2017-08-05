package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;


import entities.Transaction;

import models.TransactionModel;
import entities.Status;


/**
 * Created by rawlooa on 8/4/2017.
 */

@WebServlet(name = "AddTransactionServlet", urlPatterns = {"/add-transaction"})
public class AddTransactionServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Transaction transaction = new Transaction();
        transaction.setTransaction_id(Integer.parseInt(req.getParameter("transaction_id")));
        transaction.setBuyer_id(Integer.parseInt(req.getParameter("buyer_id")));
        transaction.setSeller_id(Integer.parseInt(req.getParameter("seller_id")));
        transaction.setPrice(Integer.parseInt(req.getParameter("price")));
        try {
            DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
            transaction.setTransaction_date(df.parse(req.getParameter("transaction_date")));
        } catch (Exception e) {
            e.printStackTrace();
        }
        transaction.setvehicle_id(Integer.parseInt(req.getParameter("vehicle_id")));

        Status status = new TransactionModel().addTransaction(transaction);

        if (status.getCode() == 1) {
            req.setAttribute("message", "Transaction Successfull");
        } else {
            req.setAttribute("message", "Transaction Failed");
        }

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
