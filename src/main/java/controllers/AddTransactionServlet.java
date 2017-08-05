package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import models.TransactionModel;
import entities.Status;

/**
 * Created by rawlooa on 8/4/2017.
 */

@WebServlet(name = "AddTransactionServlet",urlPatterns = {"/addTransaction"})
public class AddTransactionServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        Status status=new TransactionModel().addTransacation();
//
//        if(status.getCode()==1){
//            req.setAttribute("message","Transaction Successfull");
//        }
//        else {
//            req.setAttribute("message","Transaction Failed");
//        }
//
//        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
