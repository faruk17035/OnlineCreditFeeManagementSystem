
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="head.jsp"/>
</head>
                    <div class="col-md-12 text-right">
                        <a href="index.jsp" class="btn btn-info">Back to Home</a>
                    </div>
<p><br/></p>

<div class="col-lg-12">
    <div class="col-lg-3"></div>
    <div class="col-lg-6">
        
        <div class="card">
            
            <form action="" method="post">
            <div class="card-header"><strong>Add course</strong><small> Form</small></div>
            <div class="card-body card-block">
                 <div class="form-group"> <label for="course code" class=" form-control-label">course code</label>
                    <input type="text" id="course_code" name="cc" placeholder="Enter course code" class="form-control"></div>
                <div class="form-group"><label for="course name" class=" form-control-label">course name</label>
             <input type="text" id="course_name" name="cn" placeholder="Enter your course name" class="form-control"></div>
               
                <div class="form-group"><label for="course credit" class=" form-control-label">course credit</label>
                    <input type="text" id="course _credit" name="ccr" placeholder="Enter your course credit" class="form-control"></div>
                     <div class="form-group"><label for="year" class=" form-control-label">year</label>
                                             <select name="sslct" class="form-control" id="slct">
                             <option value="0">Click here</option>
                            <option value="1-1">1st year 1st semester</option>
                            <option value="1-2">1st year 2nd semester</option>
                            <option value="2-1">2nd year 1st semester</option>
                            <option value="2-2">2nd year 2nd semester</option>
                            <option value="3-1">3rd year 1st semester</option>
                            <option value="3-2">3rd year 2nd semester</option>
                            <option value="4-1">4th year 1st semester</option>
                            <option value="4-2">4th year 2nd semester</option>
                        </select>
                    <%--<select name="sslct" class="form-control" id="slct">
                         <option value="">-- Select Any --</option>
                        <c:forEach items="${yearList}" var="obj">
                            <option value="${obj.id}">${obj.name}</option>
                        </c:forEach>       
                    </select>--%>
                </div>
                
            </div>
            <div class="card-footer">
                        <button type="submit" class="btn btn-primary btn-sm">
                          <i class="fa fa-dot-circle-o"></i> Submit
                        </button>
                       <%-- <button type="reset" class="btn btn-danger btn-sm">
                          <i class="fa fa-ban"></i> Reset
                       </button>--%>
                      </div>
        </form>
                      
        </div>
            

    </div>
    <div class="col-lg-3"></div>
</html>
   <%
String a=request.getParameter("cc");
String b=request.getParameter("cn");
String c=request.getParameter("ccr");
String d=request.getParameter("sslct");
String e =request.getParameter("e");
String url="jdbc:mysql://localhost:3306/creditfee";
Connection conn=null;
PreparedStatement ps=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
if(a!=null && b!=null && c!=null && d!=null){
    try{
        conn=DriverManager.getConnection(url,"root","");
        String query="Insert into course(course_code,course_name,course_credit,semester_name) values(?,?,?,?)";
        ps=conn.prepareStatement(query);
        ps.setString(1,a);
        ps.setString(2,b);
        ps.setString(3,c);
        ps.setString(4,d);
        ps.executeUpdate();
        response.sendRedirect("showCourse.jsp");
    }catch(Exception ex){
        out.println("Your Connection Failed");
    }
}
%>