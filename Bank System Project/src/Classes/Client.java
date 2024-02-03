package Classes;

import java.util.ArrayList;

public class Client extends Person {
    public String phoneNumber;
    public ArrayList<Account> accounts = new ArrayList();
    
    
    public String generateAccountNum() {
        if(accounts.size() == 0){
            return this.id+"1";
        }
        int lastDecimal = this.accounts.size() ;
        lastDecimal++;
        String newHexa = Integer.toHexString(lastDecimal);
        String newAccountNum = this.id+newHexa;
        return newAccountNum;
    }
    
    public static boolean isValidPhoneNum(String phoneNum) {
        for(Client c:Bank.clients){
            if (c.phoneNumber.equalsIgnoreCase(phoneNum)){
                return false;
            }else{
                continue;
            }
        }
        return true;
    }
    
    @Override
    public boolean isLogined(String email, String password) {
        for(Client c:Bank.clients){
            if(c.email.equalsIgnoreCase(email) && c.password.equalsIgnoreCase(password)) {
                return true;
            }
        }
        return false;
    } 
   
    // operations :
    /*
    1-edit my personal info &show
    2-deposit
    3-withdraw
    4-transform
    5-show my transactions
    6-add account
    7-edit my acconts statue and type &show
    */
}
