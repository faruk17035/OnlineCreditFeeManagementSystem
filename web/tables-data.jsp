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
    <title>Data Table</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <jsp:include page="head.jsp"/>

</head>
<body>

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <%--<header id="header" class="header">--%>
        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Data Table</strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>Course Code</th>
                        <th>Course Name</th>
                        <th>Credit</th>
                        
                      </tr>
                    </thead>
                    <sql:setDataSource var ="db" driver = "com.mysql.jdbc.Driver" url ="jdbc:mysql://localhost:3306/creditfee" user="root" password = ""/>
                    <sql:query var ="rs" dataSource = "${db}">SELECT * FROM  course </sql:query>
                    <tbody>
                      <c:forEach 
                items = "${rs.rows}"  var = "obj">
            <tr>
                <%--<td style="text-align: center">${obj.SL_NO}</td>--%>
                 <td style="text-align: center">${obj.Course_Code}</td>
                 <%--<td>${obj.Course_Code}</td>--%>
                <td>${obj.Course_Name}</td>
                <td>${obj.course_credit}</td>
            </tr>
            </c:forEach>
                    </tbody>
                  </table>
                        </div>
                    </div>
                </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->


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
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
        } );
    </script>


</body>
</html>


