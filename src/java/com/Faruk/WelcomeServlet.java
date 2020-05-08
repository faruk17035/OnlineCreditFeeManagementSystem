package com.Faruk;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "WelcomeServlet", urlPatterns = {"/servlet2"})
public class WelcomeServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
       String id=request.getParameter("id");
       String n =request.getParameter("name");
        List<String> list = (List) request.getAttribute("studentInfo");
        for (String studentInfoString : list) {
            System.out.println(studentInfoString);
        }
           request.setAttribute("id", id);
   request.getRequestDispatcher("CourseRegistration.jsp").forward(request, response);

    
    
    }
}
