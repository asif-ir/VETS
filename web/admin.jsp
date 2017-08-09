<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="assets/paper_img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Buy | Trade & Exchange</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>

    <link href="bootstrap3/css/bootstrap.css" rel="stylesheet"/>
    <link href="assets/css/ct-paper.css" rel="stylesheet"/>
    <link href="assets/css/demo.css" rel="stylesheet"/>
    <link href="assets/css/examples.css" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/carousel.css" rel="stylesheet">

</head>
<body>
<%@include file="includes/_login_register_navbar.jsp" %>

<div class="wrapper">
    <div class="register-background">
        <div class="filter-black"></div>
        <div class="container" style="background-color: rgba(0,0,0,0.3);">
            <ul class="nav nav-tabs" style="font-weight: bolder; color: #00bbff;">
                <li class="active" style="color: #00bbff;"><a data-toggle="tab" href="#home">Recent Transactions</a></li>
                <li style="color: #00bbff;"><a data-toggle="tab" href="#menu1">Customers</a></li>
                <%--<li style="color: #00bbff;"><a data-toggle="tab" href="#menu2">Graphs</a></li>--%>
            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <h3>Recent Transactions</h3>
                    <hr>
                    <div>
                        <%@include file="includes/_transactions_table.jsp"%>
                    </div>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <h3>Customers</h3>
                    <hr>
                    <div>
                        <%@include file="includes/_customers_table.jsp"%>
                    </div>
                </div>
                <%--<div id="menu2" class="tab-pane fade">--%>
                    <%--<h3>Graphs</h3>--%>
                    <%--<hr>--%>
                    <%--<p>Graphs content goes here</p>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
</div>

</body>

<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>

<script src="bootstrap3/js/bootstrap.js" type="text/javascript"></script>

<!--  Plugins -->
<script src="assets/js/ct-paper-checkbox.js"></script>
<script src="assets/js/ct-paper-radio.js"></script>
<script src="assets/js/bootstrap-select.js"></script>
<script src="assets/js/bootstrap-datepicker.js"></script>

<script src="assets/js/ct-paper.js"></script>
<script src="assets/js/carousel.js"></script>

</html>