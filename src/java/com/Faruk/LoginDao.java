package com.Faruk;

import java.sql.*;

public class LoginDao {

    public static boolean validate(String ID, String password) {
        boolean status = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/creditfee", "root", " ");

            PreparedStatement ps = con.prepareStatement(
                    "select * from student where ID=? and password=?");
            ps.setString(1, ID);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            status = rs.next();
            
            
            

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
}
