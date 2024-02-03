package Classes;


public class Employee extends Person {
    public String position;
    public boolean accepted;
    public Qualification qualify ;

    @Override
    public boolean isLogined(String email, String password) {
        System.out.println("Emp");
        for(Employee e:Bank.employees){
            if(e.email.equalsIgnoreCase(email) && e.password.equalsIgnoreCase(password)) {
                return true;
            }
        }
        return false;
    }
    
    
    
}
