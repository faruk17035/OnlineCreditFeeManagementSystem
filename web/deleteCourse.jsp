<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String id=request.getParameter("d");
int no=Integer.parseInt(id);
try {
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/creditfee", "root", "");
    Statement st = conn.createStatement();
    
    st.executeUpdate("DELETE FROM course WHERE id = '"+no+"'");
    
      request.setAttribute("login_status_msg", "Delete Data successfully");
            RequestDispatcher rd = request.getRequestDispatcher("showCourse.jsp");
            rd.include(request, response);
    
    
   
    response.sendRedirect("message.jsp");
     
    //response.sendRedirect("showCourse.jsp");
} catch(Exception e){}
%>
