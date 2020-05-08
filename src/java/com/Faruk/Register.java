package com.Faruk;

import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/Register"})
public class Register extends HttpServlet {
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();

        String n = request.getParameter("name");
        String p = request.getParameter("password");
        String m = request.getParameter("mobile");
        String e = request.getParameter("email");
        String d = request.getParameter("dslct");
        String s = request.getParameter("sslct");
        String id = request.getParameter("id");
        String h = request.getParameter("hslct");
        String ses = request.getParameter("session");
        String degree = request.getParameter("degree");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/creditfee", "root", "");

            PreparedStatement ps = con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?)");

            ps.setString(1, id);
            ps.setString(2, p);
            ps.setString(3, n);
            ps.setString(4, m);
            ps.setString(5, e);
            ps.setString(6, ses);
            ps.setString(7, s);
            ps.setString(8, degree);
            ps.setString(9, d);
            ps.setString(10, h);
            
            ps.executeUpdate();
            
            ps = con.prepareStatement("insert into semester values(?,?)");
            ps.setString(1, id);
            ps.setString(2, s);
            ps.executeUpdate();

            ps.executeUpdate();
            
            
            
//out.print("You are successfully registered...");  

        } catch (Exception e2) {
            e2.printStackTrace();
        }  
//                HttpSession session=request.getSession(false);  
//         id=(String)session.getAttribute("id"); 
        
         String to="";
        String sub="Confirm Registration";
        String msg="";
              System.out.println(id);
        
        
        Mailsend mail=new Mailsend();
         //SmsSend sms=new SmsSend();
         try{
        Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/creditfee", "root", "");

                //PreparedStatement ps = con.prepareStatement("select id, name, session, department, hall, degree FROM student where id = ?");
    PreparedStatement ps = con.prepareStatement("select id, name,mobile,email,session, department, semester_name, hall FROM student  where id = ?;");
                ps.setString(1, id);
               // ps.setString(2, n);
               // ps.setString(3, ses);
                ResultSet rs = ps.executeQuery();
       
                while(rs.next()){
                  to=rs.getString("email");
                  id=rs.getString("id");
                  n=rs.getString("name");
                  ses=rs.getString("session");
                  s=rs.getString("sslct");   
                  m=rs.getString("mobile");
                  
                }
                  }catch (Exception e2) {
            e2.printStackTrace();
        }
        
                
                msg="Hi, "+n+ " your Student id:"+id+", you have successfully "
                        + "register for your "+s+" and "
                        +ses+"\n powered by Dept. of ICT,MBSTU";
                
                System.out.println(msg);
                   
        
            boolean flag = false;
        try {
            flag = mail.sendMail("farukictmbstu@gmail.com", sub, msg);
        } catch (MessagingException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }
        
                         if(flag){
                             request.setAttribute("cmf_msg", "you have successfully registered");
          response.sendRedirect("page-login.jsp");  
        }
        else{
             response.sendRedirect("page-register.jsp");
        }

//        out.close();
        //request.getRequestDispatcher("index.jsp").forward(request, response);
        // to, sub, msg 
        //boolean flag=Mailsend mail = new Mailsend().sendMail(, ses, s)
//        if(flag){
//          response.sendRedirect("page-login.jsp");  
//        }
//        else{
//             response.sendRedirect("page-register.jsp");
//        }
       
    }
    
            
//                
//            RequestDispatcher rd = request.getRequestDispatcher("page-login.jsp");
//           rd.include(request, response);
                
                
                
                
    }



