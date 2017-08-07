package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


import entities.Transaction;

import models.CarModel;
import models.TransactionModel;
import entities.Status;
import models.UserModel;


/**
 * Created by rawlooa on 8/4/2017.
 */

@WebServlet(name = "AddTransactionServlet", urlPatterns = {"/add-transaction"})
public class AddTransactionServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Transaction transaction = new Transaction();
        Long car_buy_id = Long.parseLong(req.getParameter("car_buy_id"));
        Long car_sell_id = Long.parseLong(req.getParameter("car_sell_id"));
        Long buyer_id = (new CarModel()).getUserIdByCarId(car_buy_id);
        Long seller_id = (new CarModel()).getUserIdByCarId(car_sell_id);
        transaction.setBuyer_id(seller_id);
        transaction.setSeller_id(buyer_id);
        transaction.setvehicle_id(Integer.parseInt(req.getParameter("car_buy_id")));
        transaction.setTransaction_date(new Date());
        transaction.setPrice(new CarModel().getCar(car_buy_id).getPrice() - new CarModel().getCar(car_sell_id).getPrice());
        /*try {
            DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
            transaction.setTransaction_date(df.parse(req.getParameter("transaction_date")));
        } catch (Exception e) {
            e.printStackTrace();
        }*/
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
