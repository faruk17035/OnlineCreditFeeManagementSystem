<!doctype html>
<head>
    <title>Login Page</title>
    <jsp:include page="head.jsp"/>
</head>

<body class="bg-blue">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">                     
      </div>
                    
                <div class="login-form">
                  
                    <%--$<label class="pull-center"> <a href="#"> Wrong Userid or Password	</a></label>--%>
                    <form action="servlet1" method="post" >
                        <div class="form-group">
                            <label>ENTER ID</label>
                            <input id="id" name="id" class="form-control" placeholder="id">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input id="password" name="password" class="form-control" type="password" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember Me
                            </label>
                            <label class="pull-right">
                                <a href="#">Forgotten Password?</a>
                            </label>
                       

                        </div>
                        
                        <p class="alert alert-danger"> <%
                            
                            if(request.getAttribute("login_status_msg")!=null){
                                out.println(request.getAttribute("login_status_msg"));
                            }
    
                         %></p>
                        
              
                        
                      <p class="alert alert-info">
                                  <%
                            
                            if(request.getAttribute("cmf_msg")!=null){
                                out.println(request.getAttribute("cmf_msg"));
                            }
    
                              %> 
                                   
                               </p>
                      
                        
                        <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>
                        <div class="register-link m-t-15 text-center">
                            <p>Don't have account ? <a href="page-register.jsp"> Sign Up Here</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
