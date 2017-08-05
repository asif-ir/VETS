package entities;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by rawlooa on 8/4/2017.
 */
public class Transaction implements Serializable {


        private static final long serialVersionUID = 1L;




        private long transaction_id;


        private long buyer_id;


        private long seller_id;


        private double price;


        private Date transaction_date;


        private int vehicle_id;

        public Transaction(){
        }

        public Transaction(long transaction_id,long buyer_id,long seller_id,double price,Date transaction_date,int vehicle_id){
            this.transaction_id=transaction_id;
            this.buyer_id=buyer_id;
            this.seller_id=seller_id;
            this.price=price;
            this.transaction_date=transaction_date;
            this.vehicle_id=vehicle_id;
        }

        public long getTransaction_id() {
            return transaction_id;
        }

        public void setTransaction_id(long transaction_id) {
            this.transaction_id = transaction_id;
        }

        public long getBuyer_id() {
            return buyer_id;
        }

        public void setBuyer_id(long buyer_id) {
            this.buyer_id = buyer_id;
        }

        public long getSeller_id() {
            return seller_id;
        }

        public void setSeller_id(long seller_id) {
            this.seller_id = seller_id;
        }

        public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }

        public Date getTransaction_date() {
            return transaction_date;
        }

        public void setTransaction_date(Date transaction_date) {
            this.transaction_date = transaction_date;
        }

        public int getvehicle_id() {
            return vehicle_id;
        }

        public void setvehicle_id(int vehicle_id) {
            this.vehicle_id = vehicle_id;
        }


    }

