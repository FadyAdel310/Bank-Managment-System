package Classes;

public abstract class Person {
    String id;
    public String firstName;
    public String lastName;
    public String email;
    public String password;

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    
    public boolean isValidEmail(String email){
        if(this.id.substring(0, 1).equals("1")){
            for(Admin a:Bank.admins) {
                if(a.email.equalsIgnoreCase(email)) {
                    return false;
                }else{
                    continue;
                }
            }
            return true;
        }else if(this.id.substring(0, 1).equals("2")){
            for(Employee e:Bank.employees) {
                if(e.email.equalsIgnoreCase(email)) {
                    return false;
                }else{
                    continue;
                }
            }
            return true;
        }else{
            for(Client c:Bank.clients) {
                if(c.email.equalsIgnoreCase(email)) {
                    return false;
                }else{
                    continue;
                }
            }
            return true;
        }
    }
    
    public abstract boolean isLogined(String email , String password);
}