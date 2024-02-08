package Classes;

public abstract class Person {
    String id;
    public String firstName;
    public String lastName;
    public String email;
    public String password;

    public Person() {
        
    }
    
    public Person(String id, String firstName, String lastName, String email, String password) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
    }

    
    
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    
    
    public abstract boolean isLogined(String email , String password);
}