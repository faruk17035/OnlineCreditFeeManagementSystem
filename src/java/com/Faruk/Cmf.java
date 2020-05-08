/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Faruk;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

/**
 *
 * @author Md Faruk Hosen
 */
@WebServlet(name = "Cmf", urlPatterns = {"/Cmf"})
public class Cmf extends HttpServlet {

   
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session=request.getSession(false);  
        String id=(String)session.getAttribute("id"); 
        
        String to="";
        String sub="Confirm Registration";
        String msg="";
        String name="";
        String session_id="";
        String st_id="";
        String Sem="";
        String phone="";
        
        System.out.println(id);
        
        
        Mailsend mail=new Mailsend();
         SmsSend sms=new SmsSend();
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
                  st_id=rs.getString("id");
                  name=rs.getString("name");
                  session_id=rs.getString("session");
                  Sem=rs.getString("semester_name");   
                  phone=rs.getString("mobile");
                  
                }
                
                msg="Hi, "+name+ " your Student id:"+st_id+",  you have successfully "
                        + "register for your "+Sem+" and "
                        +session_id+"\n powered by Dept. of ICT,MBSTU";
                
                System.out.println(msg);
                sms.smssend(phone,msg);
                boolean cmf_msg=mail.sendMail("farukictmbstu@gmail.com", sub, msg);
                
                if(cmf_msg){
                    
            request.setAttribute("cmf_msg", "you have successfully registered");
            
            
                }
                
                else{
                       request.setAttribute("cmf_msg", "you have not successfully registered");
                }
                
            RequestDispatcher rd = request.getRequestDispatcher("payment.jsp");
            rd.include(request, response);
                
                
                
                
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Cmf.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Cmf.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(Cmf.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Cmf.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Cmf.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(Cmf.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
