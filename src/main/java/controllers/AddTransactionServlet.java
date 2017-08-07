package controllers;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


import entities.Car;
import entities.Transaction;

import entities.User;
import models.CarModel;
import models.TransactionModel;
import entities.Status;
import models.UserModel;
import utils.SendEmail;
import utils.SendSMS;

@WebServlet(name = "AddTransactionServlet", urlPatterns = {"/add-transaction"})
public class AddTransactionServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Transaction transaction = new Transaction();
        Long car_buy_id = Long.parseLong(req.getParameter("car_buy_id"));
        Long car_sell_id = Long.parseLong(req.getParameter("car_sell_id"));
        Long buyer_id = (new CarModel()).getUserIdByCarId(car_sell_id);
        Long seller_id = (new CarModel()).getUserIdByCarId(car_buy_id);
        User buyer = new UserModel().getUser(buyer_id);
        User seller = new UserModel().getUser(seller_id);

        transaction.setBuyer_id(seller_id);
        transaction.setSeller_id(buyer_id);
        transaction.setvehicle_id(Integer.parseInt(req.getParameter("car_buy_id")));
        transaction.setTransaction_date(new Date());

        Car car_buy=new CarModel().getCar(car_buy_id);
        Car car_sell=new CarModel().getCar(car_sell_id);
        transaction.setPrice(car_buy.getPrice() - car_sell.getPrice());
        /*try {
            DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
            transaction.setTransaction_date(df.parse(req.getParameter("transaction_date")));
        } catch (Exception e) {
            e.printStackTrace();
        }*/
        transaction.setvehicle_id(Integer.parseInt(req.getParameter("vehicle_id")));

        Status status = new TransactionModel().addTransaction(transaction);
        String host = "smtp.gmail.com";
        String from = "rtsskmit@gmail.com";
        String pass = "rtssmini";
        String emailTo[] = {seller.getEmail(),buyer.getEmail()};
        if(status.getCode()!=0){
            req.setAttribute("message", "Transaction Failed");
            return;
        }

            req.setAttribute("message", "Transaction Successfull");
            SendSMS.sendSms("Order placed successfully",buyer.getPhone());
            SendSMS.sendSms("Your car "+car_buy.getModel_name()+","+"car ID ="+car_buy.getId()+
                    " has been ordered",seller.getPhone());
            String sub="Order Placed on Trade and Exchange",
                msg = "Order placed for trading/exchanging between car ID:"+car_buy.getId()+",model name: "+car_buy.getModel_name()
                    + "and car ID: "+car_sell.getId()+",model name: "+car_sell.getModel_name();
            try {
                SendEmail.sendEmail(host,from,pass,emailTo,sub,msg);
            } catch (MessagingException e) {
                e.printStackTrace();
            }


        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
