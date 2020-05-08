
package JDBC_Connection;

import java.sql.DriverManager;
import java.sql.*;

public class FirstApp {
    public static void main(String[] args) {
        try{
            String dbUrl = "jdbc:mysql://localhost:3306/test";
            String username = "root";
            String password = "";
            //get a connection()            (step 1)
            Connection myConnection = DriverManager.getConnection(dbUrl,username,password);
            //create a statement object     (step 2)
            Statement myStatement = myConnection.createStatement();
            //execute  Query                (step 3)
            ResultSet myResultSet = myStatement.executeQuery("Select * from emp");
            //process the Result set        (step 4)
//            while(myResultSet.next()){
//                System.out.println(myResultSet.getString("empid")+" "+myResultSet.getString("ename")+" "+myResultSet.getString("eaddress"));
//            }
            while(myResultSet.next()){
                System.out.println(myResultSet.getString(1)+" "+myResultSet.getString(2)+" "+myResultSet.getString(3));
            }
            
        }catch(Exception e){
            System.out.println(e.getMessage());
            
        }
    }
    
    
}
