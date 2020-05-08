<head>
    <title>Register Page</title>
    <jsp:include page="head.jsp"/>
</head>
<html class="no-js" lang="">
<body class="bg-red">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">  
                <div class="login-content">
                <div class="login-form">
                     <form action="Register" method="post">
                        <div class="form-group">
                            <label>Your Name(According to your Reg.):</label>
                            <input id="name" name="name" class="form-control" placeholder="name">
                        </div>
                        <div class="form-group">
                            <label>Your ID:</label>
                            <input id="id" name="id" class="form-control" placeholder="id">
                        </div>
                        <div class="form-group">
                            <label>Session:</label>
                            <input id="session" name="session" class="form-control" placeholder="session">
                        </div>
                        <div class="form-group"><label for="select" class=" form-control-label">SELECT DEGREE : </label>
                       <select name="degree" class="form-control" id="degree">
                            <option value="0">Click here</option>
                            <option value="BSc(Engg.)">BSc (Engg.)</option>
                            <option value="BSc (Hons.)">BSc (Hons.)</option>                      
                    </select>
                </div>
                           <div class="form-group"><label for="select" class=" form-control-label">Select Year and Semester: </label>
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
                    </div>
                         <div class="form-group"><label for="select" class=" form-control-label">Select Your Department: </label>
                    <select name="dslct" class="form-control" id="slct"> <option value="0">Click here</option>
                            <option value="ICT">Information and Communication Technology</option>
                            <option value="CSE">Computer Science and Engineering</option>
                            <option value="TE">Textile Engineering</option>
                            <option value="MATH">Mathematics</option>
                            <option value="PHYSICS">Physics</option>
                            <option value="CHEMISTRY">Chemistry</option>
                            <option value="STATISTICS">Statistics</option>
                            <option value="PHARMACY">Pharmacy</option>
                            <option value="BMB">Biochemistry and Molecular Biology</option>
                            <option value="BGE">Biotechnology and Genetic Engineering</option> 
                            <option value="FTNS">Food Technology and Nutritional Science</option>
                            <option value="ESRM">Environmental Science and Resources Management</option>
                            <option value="CPS">Criminology and Police Science</option>
                            <option value="ECONOMICS">Economics</option> 
                            <option value="BBA">Bachelor of Business Administration</option>
                        </select>
                    </div>
                         <div class="form-group"><label for="select" class=" form-control-label">Select Your Hall:</label>
                      <select name="hslct" class="form-control" id="slct"> <option value="0">Click here</option>
                        
                            <option value="JAMH">JAMH</option>
                            <option value="BSMRH">BSMRH</option>
                            <option value="SZRH">SZRH</option>
                            <option value="AKBH">AKBH</option>
                            <option value="SJZIH">SJZIH</option>
                        </select>
                    </div>
                         <div class="form-group">
                            <label>Your Mobile Number:</label>
                            <input id="mobile" name="mobile" class="form-control" placeholder="mobile">
                        </div>
                         
                           <div class="form-group">
                            <label>Your Email Number:</label>
                            <input id="email" name="email" class="form-control" placeholder="email">
                        </div>
                         
                        <div class="form-group">
                            <label>Choose a password:</label>
                            <input id="password" name="password" class="form-control" type="password" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Agree the terms and policy
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Register</button>
                        <div class="register-link m-t-15 text-center">
                            <p>Already have account ? <a href="page-login.jsp"> Sign in</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>

</body></html>

