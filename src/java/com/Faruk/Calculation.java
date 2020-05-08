
package com.Faruk;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Calculation", urlPatterns = {"/Calculation"})
public class Calculation extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cc = request.getParameter("cc");
        String cn = request.getParameter("cn");
        String ccr = request.getParameter("ccr");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/creditfee", "root", "");

            PreparedStatement ps = con.prepareStatement("insert into backlog values(?,?,?)");
            ps.setString(1, cc);
            ps.setString(2, cn);
            ps.setString(3, ccr);
            ps.executeUpdate();
            
                } catch (Exception e2) {
            e2.printStackTrace();
        }

//        out.close();
        //request.getRequestDispatcher("index.jsp").forward(request, response);
        response.sendRedirect("payment.jsp");
    }
    }

