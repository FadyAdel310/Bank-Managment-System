package Classes;

import java.time.LocalDate;


public class Transaction {
    String id;
    public float amount;
    public LocalDate date ;
    public String senderAccountNum ;
    public String receiverAccountNum ;

    public Transaction() {
    }
    public Transaction(String id, float amount, LocalDate date, String senderAccountNum, String receiverAccountNum) {
        this.id = id;
        this.amount = amount;
        this.date = date;
        this.senderAccountNum = senderAccountNum;
        this.receiverAccountNum = receiverAccountNum;
    }
    
   
    
    
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    
}
