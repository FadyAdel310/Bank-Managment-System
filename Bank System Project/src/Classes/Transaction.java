package Classes;

import java.time.LocalDate;


public class Transaction {
    String id;
    public float amount;
    public LocalDate date ;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    
}
