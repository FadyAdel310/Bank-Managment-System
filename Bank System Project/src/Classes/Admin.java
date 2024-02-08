package Classes;

public class Admin extends Person {

    public Admin(String id, String firstName, String lastName, String email, String password) {
        super(id, firstName, lastName, email, password);
    }

   public Admin() {
       
   }
         

    @Override
    public boolean isLogined(String email, String password) {
        for(Admin a:Bank.admins){
            if(a.email.equalsIgnoreCase(email) && a.password.equals(password)) {
                return true;
            }
        }
        return false;
    }


    
}
