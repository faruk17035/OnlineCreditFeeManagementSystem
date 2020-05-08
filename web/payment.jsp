
<%@page import="storage_service.InternalStorage"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="head.jsp"/>
    <title>Payment form</title>
</head>
                    <div class="col-md-12 text-right">
                        <a href="index.jsp" class="btn btn-info">Back to Home</a>
                    </div>
<p><br/></p>

<%
    double sumOfRegCouCredit = (double) request.getSession().getAttribute("sumOfRegCouCredit");
    double sumOfBlCoursCredit = (double) request.getAttribute("sumOfBlCoursCredit");
   
    %>


<div class="col-lg-12">
    <div class="col-lg-3"></div>
    <div class="col-lg-6">
        
        <div class="card">
            
            <form action="Cmf" method="post">
                <table id='courseTable' border="1" width="100%">
             <div id="right-panel" class="right-panel">

        <!-- Header-->
        <%--<header id="header" class="header">--%>
        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                <div class="col-md-12">
                    <div class="card">
                       <%-- <div class="card-header">
                            <strong class="card-title">Data Table</strong>
</div>--%>
                        <%--<div class="card-body">--%>
                        <div class="card-header"><strong>PAYMENT</strong><strong> FORM</strong></div>
                  <table cellpadding="2" width="100%" border="1">
                    <tbody>
                      <tr>
                          <td>Regular Course Credit</td>
                          <td> <%=sumOfRegCouCredit%> </td>
                      </tr>
                      <tr>
                        <td>Backlog Course Credit</td>
                          <td> <%=sumOfBlCoursCredit%> </td>   
                      </tr>
                      

       
            <tr>
               
                 <td>Total credit</td>
                 <td><%=sumOfRegCouCredit+sumOfBlCoursCredit%></td>
            </tr>
            <tr>
                        <td>Regular Credit Amount</td>
                          <td> <%=(sumOfRegCouCredit*110)%> </td>   
                      </tr>
                      <tr>
                        <td>Backlog Credit Amount</td>
                          <td> <%=(sumOfBlCoursCredit*300)%> </td>   
                      </tr>
            <tr>
                 
                <td>Total credit Amount </td>
                <td><%=(sumOfRegCouCredit*110)+(sumOfBlCoursCredit*300)%></td>
            </tr>
            <tr>
                <td>Another cost</td>
                <td>500</td>
            </tr>
            <tr>
                <td>Total amount</td>
                <td><%=((sumOfRegCouCredit*110)+(sumOfBlCoursCredit*300))+500%> </td>
            </tr>
        
        </table>
                        <div></br>
                       
                        <p><br></p>
                        </div>
                           <div class="col-md-12 text-right">
                               <p class="alert alert-info">
                                  <%
                            
                            if(request.getAttribute("cmf_msg")!=null){
                                out.println(request.getAttribute("cmf_msg"));
                            }
    
                              %> 
                                   
                               </p>
                          
                           <button type="submit" class="btn btn-primary btn-sm">
                           
                            <i class="fa fa-dot-circle-o"></i> PAY NOW
                        </button>
                           </div>
               </form>
                      </div>
                      </div>
                        
                      
        
            

    </div>
    <div class="col-lg-3"></div>
</html>
