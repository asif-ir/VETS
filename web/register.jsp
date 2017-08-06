<!doctype html>
<%@include file="includes/_message.jsp"%>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="../assets/paper_img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Register | Trade & Exchange</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link href="../bootstrap3/css/bootstrap.css" rel="stylesheet" />
    <link href="../assets/css/ct-paper.css" rel="stylesheet"/>
    <link href="../assets/css/demo.css" rel="stylesheet" />
    <link href="../assets/css/examples.css" rel="stylesheet" />

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>

</head>
<body>

<%@include file="includes/_login_register_navbar.jsp"%>

<div class="wrapper">
    <div class="register-background">
        <div class="filter-black"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1 ">
                    <div class="register-card">
                        <h3 class="title">Register User</h3>

                        <br><%@include file="includes/_message.jsp"%>

                        <form class="register-form" method="post" action="/register">
                            <label>First Name</label>
                            <input type="text" class="form-control" name="first_name" id="first_name" placeholder="First Name">

                            <label>Last Name</label>
                            <input type="text" class="form-control" name="last_name" id="last_name" placeholder="Last Name">

                            <label>Email</label>
                            <input type="text" class="form-control" name="email" id="email" placeholder="email">

                            <label>Phone</label>
                            <input type="number" class="form-control" name="phone" id="phone" placeholder="phone">

                            <label>Username</label>
                            <input type="text" class="form-control" name="username" id="username" placeholder="Username">

                            <label>Password</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password">

                            <input type="submit" class="btn btn-danger btn-block" value="Register">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer register-footer text-center">
            <h6>&copy; 2017, made with <i class="fa fa-heart heart"></i></h6>
        </div>
    </div>
</div>

</body>

<script src="../assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="../assets/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>

<script src="../bootstrap3/js/bootstrap.js" type="text/javascript"></script>

<!--  Plugins -->
<script src="../assets/js/ct-paper-checkbox.js"></script>
<script src="../assets/js/ct-paper-radio.js"></script>
<script src="../assets/js/bootstrap-select.js"></script>
<script src="../assets/js/bootstrap-datepicker.js"></script>

<script src="../assets/js/ct-paper.js"></script>

</html>