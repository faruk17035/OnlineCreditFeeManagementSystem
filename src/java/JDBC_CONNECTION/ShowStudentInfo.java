
package JDBC_Connection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ShowStudentInfo", urlPatterns = {"/ShowStudentInfo"})
public class ShowStudentInfo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
             System.out.println("hit");
            Class.forName("com.mysql.jdbc.Driver");
            String dbUrl = "jdbc:mysql://localhost:3306/ict";
            String username = "root";
            String password = "";
            //get a connection()step 1
            Connection myConnection = DriverManager.getConnection(dbUrl,username,password);
            //create a statement object(step 2)
            Statement myStatement = myConnection.createStatement();
            //execute  Query(step 3)
            ResultSet myResultSet = myStatement.executeQuery("Select * from Sonnett");
            //process the Result set
            List studentList = new ArrayList();
            while (myResultSet.next()) {                
                studentList.add(new Student(myResultSet.getString("ID"),myResultSet.getString("Name"),myResultSet.getString("Mobile")));
            }
            request.setAttribute("studentList", studentList);
            request.getRequestDispatcher("displayStudentInfo.jsp").forward(request, response);
           
        }catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
            
        }
    }

}
