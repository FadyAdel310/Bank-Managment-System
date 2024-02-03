package Classes;

import java.util.ArrayList;

public class Bank {
    public static ArrayList<Admin> admins = new ArrayList();
    public static ArrayList<Client> clients = new ArrayList();
    public static ArrayList<Employee> employees = new ArrayList();
    public static ArrayList<Transaction> transactions = new ArrayList();

    public static String generateClientId() {
        if(clients.size() == 0){
            return "3"+"10000";
        }
        int lastClientIndex = clients.size() - 1;
        String lastClientId = clients.get(lastClientIndex).id;
                int lastDecimal =Integer.parseInt(lastClientId.substring(1, lastClientId.length()), 16) ;
                lastDecimal++;
                String newHexa = Integer.toHexString(lastDecimal);
                String newClientId = "3"+newHexa;
        return newClientId;
    }
    
    public static String generateEmployeeId() {
        if(employees.size() == 0){
            return "2"+"10000";
        }
        int lastEmployeeIndex = employees.size() - 1;
        String lastEmployeeId = employees.get(lastEmployeeIndex).id;
                int lastDecimal =Integer.parseInt(lastEmployeeId.substring(1, lastEmployeeId.length()), 16) ;
                lastDecimal++;
                String newHexa = Integer.toHexString(lastDecimal);
                String newEmployeeId = "2"+newHexa;
        return newEmployeeId;
    }
    
    public static String generateTransactionId() {
        if(transactions.size() == 0){
            return "10000";
        }
        int lastTransactionIndex = transactions.size() - 1;
        String lastTransactionId = transactions.get(lastTransactionIndex).id;
                int lastDecimal =Integer.parseInt(lastTransactionId, 16) ;
                lastDecimal++;
                String newHexa = Integer.toHexString(lastDecimal);
                String newTransactionId = newHexa;
        return newTransactionId;
    }
    

    
}
