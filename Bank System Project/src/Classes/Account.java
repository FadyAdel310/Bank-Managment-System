package Classes;

import java.time.LocalDate;
import java.util.ArrayList;


public class Account {
    String accountNumber;
    public String type;
    public float balance;
    public String statues;
    public LocalDate startDate;

    
    public Account(){
        
    }
    public Account(String accountNumber, String type, float balance, String statues, LocalDate startDate) {
        this.accountNumber = accountNumber;
        this.type = type;
        this.balance = balance;
        this.statues = statues;
        this.startDate = startDate;
    }

    
    
    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }
    
    
    
    
    
}
