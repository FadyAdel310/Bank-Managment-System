package Classes;

public class Admin extends Person {

    @Override
    public boolean isLogined(String email, String password) {
        for(Admin a:Bank.admins){
            if(a.email.equalsIgnoreCase(email) && a.password.equalsIgnoreCase(password)) {
                return true;
            }
        }
        return false;
    }


    
}
