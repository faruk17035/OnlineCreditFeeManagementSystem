
<%@page import="storage_service.InternalStorage"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<html class="no-js" lang=""> 
    <%@page import="java.util.ArrayList"%>
    <%@page import="java.util.List"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

    <%@taglib prefix ="sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
    <html>
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>Course Registration page</title>
            <meta name="description" content="Sufee Admin - HTML5 Admin Template">
            <meta name="viewport" content="width=device-width, initial-scale=1">


            <jsp:include page="head.jsp"/>

            <title>Course Registration page</title>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

            <style>
                table input {
                    width: 99%;
                }
            </style>
            <title>Course Registration</title>
        </head>
        <!--background="1.jpg"-->
        <body > 

        <center><img src="logo_large.jpg" alt="logo" width="100" height="100"><h1>Mawlana Bhashani Science and Technology University</h1></center>
        <center><h2><u>Course Registration Form for Undergraduate/Postgraduate Students</u></h2></center>
        <div style="margin-left: 90px;">
            <table cellpadding="2" width="100%">

                <% List<String> students = (ArrayList<String>) request.getAttribute("studentInfo");%>
                <tr> <td>Name of the Student: <% out.print(students.get(1));%> </td>
                    <td>Student ID: <% out.print(students.get(0));%></td>
                    <td>Session: <% out.print(students.get(2));%></td>
                </tr>

                <tr><td>Name of the Department: <% out.print(students.get(3));%></td>
                    <td>Year and Semester: <% out.print(students.get(4));%></td>
                    <td>Hall: <% out.print(students.get(5));%></td>
                </tr>
            </table>
        </div>

        <div style="margin-left: 100px;">
            <h3><u>Regular Course(s)</u></h3>
            <table id='courseTable' border="1" width="100%">
                <div id="right-panel" class="right-panel">

                    <!-- Header-->
                    <%--<header id="header" class="header">--%>
                    <div class="content mt-3">
                        <div class="animated fadeIn">
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="card">
                                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Course Code</th>
                                                    <th>Course Name</th>
                                                    <th>Credit</th>

                                                </tr>
                                            </thead>

                                            <sql:setDataSource var ="db" driver = "com.mysql.jdbc.Driver" url ="jdbc:mysql://localhost:3306/creditfee" user="root" password = ""/>
                                            <sql:query var ="rs" dataSource = "${db}">SELECT * FROM  course where semester_name = '<% out.print(students.get(4));%>' </sql:query>
                                                <tbody>
                                                <c:forEach 
                                                    items = "${rs.rows}"  var = "obj">
                                                    <tr>
                                                        <td style="text-align: center">${obj.Course_Code}</td>
                                                        <%--<td>${obj.Course_Code}</td>--%>
                                                        <td>${obj.Course_Name}</td>
                                                        <td>${obj.course_credit}</td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                                 <div class="register-link m-t-15 text-left">
                            <p>If Any Backlog ? <a href="backlogcourse.jsp"> Click Here</a></p>
                        </div>
                                    </div>
                                        
                                    <form action="Calculation" method="post">
<!--                                        <div>
                                            <div style="margin-left: 90px; margin-bottom: 10px;">
                                                <h3><u>Backlog Course(s)</u></h3>
                                                <table cellpadding="2" width="100%" border="1">
                                                    <tr>
                                                        <th>SL No.</th>
                                                        <th>Course Code</th>
                                                        <th>Course Name</th>
                                                        <th>Credit</th>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center">01</td>
                                                        <%--<td><input type="text"/></td>
                                                        <td><input type="text"/></td>
                                                        <td><input type="text"/></td>--%>
                                                        <td><input type="text" name="cc" class="form-control"></td>
                                                        <td><input type="text" name="cn" class="form-control"></td>
                                                        <td><input type="text" name="ccr" class="form-control"></td>

                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center">02</td>

                                                        <td><input type="text" name="cc" class="form-control"></td>
                                                        <td><input type="text" name="cn" class="form-control"></td>
                                                        <td><input type="text" name="ccr" class="form-control"></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center">03</td>

                                                        <td><input type="text" name="cc" class="form-control"></td>
                                                        <td><input type="text" name="cn" class="form-control"></td>
                                                        <td><input type="text" name="ccr" class="form-control"></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center">04</td>
                                                        <td><input type="text" name="cc" class="form-control"></td>
                                                        <td><input type="text" name="cn" class="form-control"></td>
                                                        <td><input type="text" name="ccr" class="form-control"></td>

                                                    </tr>
                                                    <tr>
                                                        <td style="text-align: center">05</td>
                                                        <td><input type="text" name="cc" class="form-control"></td>
                                                        <td><input type="text" name="cn" class="form-control"></td>
                                                        <td><input type="text" name="ccr" class="form-control"></td>

                                                    </tr>
                                                </table>
                                            </div>-->
                       
                                            <div style="margin-left: 90px; margin-bottom: 10px;">
                                                <table>
                                                    <tr> 
                                                        <td = 'center'> <b>  Total credit : </b></center></td>
                                                        <td>  <% Statement st;
                                                        
                                                            try {
                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/creditfee", "root", "");
                                                               // System.out.println("Connected to the database");
                                                                String s =students.get(4);
                                                                String query = "select sum(course_credit) from course where  semester_name = '" + s +"'";
                                                                st = con.createStatement();
                                                                ResultSet rs = st.executeQuery(query);
                                                                //while (rs.next())
                                                                rs.next();
                                                                double sumOfRegCouCredit = rs.getDouble("sum(course_credit)");
                                                                //request.setAttribute("sumOfRegCouCredit", sumOfRegCouCredit);
                                                                request.getSession().setAttribute("sumOfRegCouCredit", sumOfRegCouCredit);
                                                               // InternalStorage.setInstanceData("sumOfRegCouCredit", ""+sumOfRegCouCredit);
                                                                {%>
                                                            <%=sumOfRegCouCredit%>
                                                            <%}
                                                                    //  request.setAttribute("sumcount",sumcount);
                                                                    //  RequestDispatcher rd = request.getRequestDispatcher("sum.jsp");
                                                                    //            rd.forward(request, response);

                                                                   // System.out.println("Disconnected from database");
                                                                } catch (Exception e) {
                                                                    e.printStackTrace();
                                                                }
                                                            %> </td>
                                                </table>
                                            </div>

                                            <div class="col-md-12 text-right">
                                               <%-- <button type="submit" class="btn btn-primary btn-sm">
                                                    <i class="fa fa-dot-circle-o"></i> <%--<a href="backlogcourse.jsp" class="btn btn-info">--%>
                                                <%--</button>--%>
                                                 <a href="backlogcourse.jsp" class="btn btn-info" > Submit</a>
                        </button>
                                            </div>
                                        </div>

                                </div></form>

                                <script type="text/javascript" src = "https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

                                <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
                                <script src="assets/js/popper.min.js"></script>
                                <script src="assets/js/plugins.js"></script>
                                <script src="assets/js/main.js"></script>


                                <script src="assets/js/lib/data-table/datatables.min.js"></script>
                                <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
                                <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
                                <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
                                <script src="assets/js/lib/data-table/jszip.min.js"></script>
                                <script src="assets/js/lib/data-table/pdfmake.min.js"></script>
                                <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
                                <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
                                <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
                                <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
                                <script src="assets/js/lib/data-table/datatables-init.js"></script>


                                <script type="text/javascript">
                                    $(document).ready(function () {
                                        $('#bootstrap-data-table-export').DataTable();
                                    });
                                </script>
                                </body>
                                </html>
