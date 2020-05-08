package com.Faruk;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import sun.security.util.Password;

@WebServlet(name = "FirstServlet", urlPatterns = {"/servlet1"})
public class FirstServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        //session.setAttribute("name", n);

        String id = request.getParameter("id");
        String p = request.getParameter("password");
        String n = request.getParameter("name");
        String m = request.getParameter("mobile");
         String ses = request.getParameter("session");
        //String n = request.getParameter("name");
        //String n = request.getParameter("name");
        // String n = request.getParameter("name
        
        if(id.equals("admin") && p.equals("admin")){
            response.sendRedirect("admin.jsp");
        }
        
        else  if (LoginDao.validate(id, p)) {
            List studentInfo = new ArrayList();
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/creditfee", "root", "");

                //PreparedStatement ps = con.prepareStatement("select id, name, session, department, hall, degree FROM student where id = ?");
                PreparedStatement ps = con.prepareStatement("select id, name, session, department, semester_name, hall FROM student  where id = ?;");
                ps.setString(1, id);
               // ps.setString(2, n);
               // ps.setString(3, ses);
                ResultSet rs = ps.executeQuery();
                
                
                while(rs.next()){
                    studentInfo.add(rs.getString("id"));
                    studentInfo.add(rs.getString("name"));
                    studentInfo.add(rs.getString("session"));
                    studentInfo.add(rs.getString("department"));
                    studentInfo.add(rs.getString("semester_name"));
                    studentInfo.add(rs.getString("hall"));
                    //studentInfo.add(rs.getString("degree"));
                    
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        
            session.setAttribute("name", n);
            session.setAttribute("id", id);
            request.setAttribute("studentInfo", studentInfo);
            RequestDispatcher rd = request.getRequestDispatcher("servlet2");
            rd.forward(request, response);
            
            

        } else {
            
            
           
            request.setAttribute("login_status_msg", "Invail username or password");
            RequestDispatcher rd = request.getRequestDispatcher("page-login.jsp");
            rd.include(request, response);

            //request.getSession().setAttribute("n", "id");
        }

        out.close();
    }
}
