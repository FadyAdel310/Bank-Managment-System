package Classes;


public class Employee extends Person {
    public String position;
    public boolean accepted;
    public Qualification qualify ;

    public Employee() {
    }

    
    
    public Employee(String position, boolean accepted, Qualification qualify) {
        this.position = position;
        this.accepted = accepted;
        this.qualify = qualify;
    }

    public Employee(String position, boolean accepted, Qualification qualify, String id, String firstName, String lastName, String email, String password) {
        super(id, firstName, lastName, email, password);
        this.position = position;
        this.accepted = accepted;
        this.qualify = qualify;
    }

    
    
    @Override
    public boolean isLogined(String email, String password) {
        for(Employee e:Bank.employees){
            if(e.email.equalsIgnoreCase(email) && e.password.equals(password)) {
                return true;
            }
        }
        return false;
    }
    
    
    
}
