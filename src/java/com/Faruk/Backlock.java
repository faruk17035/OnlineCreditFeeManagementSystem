/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Faruk;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Md Faruk Hosen
 */
public class Backlock extends HttpServlet {

   
  

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        double sumOfBlCoursCredit = 0;
        for(int i = 1;i<=5;i++)
        {
            String value  = request.getParameter("c"+i);
            sumOfBlCoursCredit += value.length()==0 ? 0 : Double.parseDouble(value);
            
       
           
        }
        
        //System.out.println("Sum = "+sum);
        request.setAttribute("sumOfBlCoursCredit", sumOfBlCoursCredit);
        request.getRequestDispatcher("payment.jsp").forward(request, response);
    }

   
}
