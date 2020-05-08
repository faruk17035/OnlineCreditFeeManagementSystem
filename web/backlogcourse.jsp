<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <div style="margin-left: 90px; margin-bottom: 10px;">
            <h3><u>Backlog Course(s)</u></h3>
            <br>

            
           
            
            
            <form action="Backlock" method="post">


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
                        <td><input name="c1" type="text" name="ccr" class="form-control"></td>

                    </tr>
                    <tr>
                        <td style="text-align: center">02</td>

                        <td><input type="text" name="cc" class="form-control"></td>
                        <td><input type="text" name="cn" class="form-control"></td>
                        <td><input name="c2" type="text" name="ccr" class="form-control"></td>
                    </tr>
                    <tr>
                        <td style="text-align: center">03</td>

                        <td><input type="text" name="cc" class="form-control"></td>
                        <td><input type="text" name="cn" class="form-control"></td>
                        <td><input name="c3" type="text" name="ccr" class="form-control"></td>
                    </tr>
                    <tr>
                        <td style="text-align: center">04</td>
                        <td><input type="text" name="cc" class="form-control"></td>
                        <td><input type="text" name="cn" class="form-control"></td>
                        <td><input name="c4" type="text" name="ccr" class="form-control"></td>

                    </tr>
                    <tr>
                        <td style="text-align: center">05</td>
                        <td><input type="text" name="cc" class="form-control"></td>
                        <td><input type="text" name="cn" class="form-control"></td>
                        <td><input name="c5" type="text" name="ccr" class="form-control"></td>

                    </tr>
                </table>
                        <br>
                <!--               <div class="col-md-12 text-right">
                                                                <button type="submit" class="btn btn-primary btn-sm">
                                                                    <i class="fa fa-dot-circle-o"></i> <a href="payment.jsp">Submit
                                                                </button>
                                                            </div>-->
                <div class="col-md-12 text-right">
                    <input type="submit" value="Submit" class="btn btn-info">
                </div>
                
            </form>
        </div>
                        
    </body>


</html>
