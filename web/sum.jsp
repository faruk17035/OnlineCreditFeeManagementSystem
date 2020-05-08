<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--<h1>Hello Faruk</h1>--%>
  <% Statement st;
   try { 
  Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/creditfee","root","");
  System.out.println("Connected to the database");
 String query="select sum(course_credit) from course where semester_name = '3-1'";
  st = con.createStatement();
  ResultSet  rs = st.executeQuery(query);
  while(rs.next())
  {%>
  <%= rs.getDouble("sum(course_credit)") %>
 <%}
  System.out.println("Disconnected from database");
  }
  catch (Exception e) {
  e.printStackTrace();
  }
   %>
    </body>
</html>
