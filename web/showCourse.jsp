<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<!doctype html>
<html class="no-js" lang=""> 
    <%@page import="java.util.ArrayList"%>
    <%@page import="java.util.List"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

    <%@taglib prefix ="sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>SHOW ALL COURSES</title>
        <jsp:include page="head.jsp"/>

    </head>
    <body>

        <div id="right-panel" class="right-panel">
            <form action="showCourse" method="post" >
                <div class="content mt-3">
                    <div class="animated fadeIn">
                        <div class="row">

                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong class="card-title">Data Table</strong>
                                        
                                        <p class="alert alert-danger"> <%
                            
                            if(request.getAttribute("login_status_msg")!=null){
                                out.println(request.getAttribute("login_status_msg"));
                            }
    
                         %></p>
                                        
                                        <div class="col-md-12 text-right">
                                            <a href="AddCourse.jsp" class="btn btn-primary">Add Course</a>
                                        </div>
                                    </div>

                                    <div class="card-body">
                                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <%--<th>id</th>--%>
                                                    <th>Course Code</th>
                                                    <th>Course Name</th>
                                                    <th>Credit</th>
                                                    <th>Actions</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    //String Host = "jdbc:mysql://localhost:3306/mydata";
                                                    //Connection connection = null;
                                                    //Statement statement = null;
                                                    
                                                    ResultSet rs = null;
                                                    String dbUrl = "jdbc:mysql://localhost:3306/creditfee";
                                                    String username = "root";
                                                    String password = "";
                                                    //get a connection()            (step 1)
                                                    Connection connection = DriverManager.getConnection(dbUrl, username, password);
                                                    //create a statement object     (step 2)
                                                    Statement statement = connection.createStatement();
                                                    // connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "");
                                                    statement = connection.createStatement();
                                                    String Data = "select * from course";
                                                    rs = statement.executeQuery(Data);
                                                    while (rs.next()) {
                                                %>
                                                <tr>
                                                    <td><%=rs.getString("course_code")%></td>
                                                    <td><%=rs.getString("course_name")%></td>
                                                    <td><%=rs.getString("course_credit")%></td>
                                                    <td class="text-center" width="180">
                                                        <%--<a href='edit.jsp?u=<%=rs.getString("slno")%>' class="btn btn-warning">Edit</a>--%>
                                                        <a href='deleteCourse.jsp?d=<%=rs.getString("id")%>' class="btn btn-danger">Delete</a>
                                                    </td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div><!-- .animated -->
                </div><!-- .content -->
            </form>


        </div><!-- /#right-panel -->

        <!-- Right Panel -->


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

