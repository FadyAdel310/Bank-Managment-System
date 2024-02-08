package Classes;

import Frames.Login;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public class Bank {
    public static ArrayList<Admin> admins = new ArrayList();
    public static ArrayList<Client> clients = new ArrayList();
    public static ArrayList<Employee> employees = new ArrayList();
    public static ArrayList<Transaction> transactions = new ArrayList();

    public static String adminsTable = "BANK_ADMINS1";
    public static String clientsTable = "BANK_CLIENTS1";
    public static String employeesTable = "BANK_EMPLOYEES1";
    public static String accountsTable = "BANK_ACCOUNTS1";
    public static String transactionsTable = "BANK_TRANSACTIONS1";
    
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
    
    public static LocalDate getDateFromString(String dateString) {
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-M-d");
        LocalDate date = LocalDate.parse(dateString, dateFormatter);
        return date;
    }
    
    public static void refreshMemoryData() {
        admins.clear();
        clients.clear();
        employees.clear();
        transactions.clear();
        Login.loadData();
    }
    
    public static boolean isValidEmail(String email){
        for(Admin a:Bank.admins) {
            if(a.email.equalsIgnoreCase(email)) {
                return false;
            }
        }
        for(Employee e:Bank.employees) {
            if(e.email.equalsIgnoreCase(email)) {
                return false;
            }
        }
        for(Client c:Bank.clients) {
            if(c.email.equalsIgnoreCase(email)) {
                return false;
            }
        }
        return true;   
    }
    
    // incase email is exist only {
    public static Client getClientByEmail(String email) {
        for (int i = 0 ; i < clients.size() ; i++) {
            if (clients.get(i).email.equalsIgnoreCase(email)) {
                return clients.get(i);
            }
        }
        return null;
    }
    
    public static Client getClientById(String clientId) {
        for (int i = 0 ; i < clients.size() ; i++) {
            if (clients.get(i).id.equalsIgnoreCase(clientId)) {
                return clients.get(i);
            }
        }
        return null;
    }
    
    public static Employee getEmployeeByEmail(String email) {
        for (int i = 0 ; i < employees.size() ; i++) {
            if (employees.get(i).email.equalsIgnoreCase(email)) {
                return employees.get(i);
            }
        }
        return null;
    }
    
    public static Admin getAdminByEmail(String email) {
        for (int i = 0 ; i < admins.size() ; i++) {
            if (admins.get(i).email.equalsIgnoreCase(email)) {
                return admins.get(i);
            }
        }
        return null;
    }
    
    public static Account getAccountByNumber(String accountNum) {
        String userId = accountNum.substring(0,6);
        return Bank.getClientById(userId).getSpecificAccount(accountNum);
    }
    // incase email is exist only }
}
