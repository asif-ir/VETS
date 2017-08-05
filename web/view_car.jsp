<!doctype html>
<%@ page import="models.CarModel" %>
<%@ page import="entities.Car" %>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="../assets/paper_img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Profile | Trade & Exchange</title>

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
<%-- @include file="includes/_navbar.jsp" --%>

<!-- div class="wrapper">
    <div class="profile-background">
        <div class="filter-black"></div>
    </div>
    <div class="profile-content section-nude">
        <div class="container">
            <div class="row owner">
                <div class="col-md-2 col-md-offset-5 col-sm-4 col-sm-offset-4 col-xs-6 col-xs-offset-3 text-center">


                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">

                </div>
            </div>
            <div class="profile-tabs">
                <div class="nav-tabs-navigation">

                </div>
                <div class="container">
                    <%--
//                        Car car=new CarModel().getCar(2);
                    --%>
                    <table class="table table-stripped table-hover">
                        <tr>
                            <th>Model Name :</th>
                            <th>Brand Name :</th>
                        </tr>
                        <tr>
                            <td><%-- =car.getModel_name() --%></td>
                            <td><%-- =car.getBrand_name() --%></td>
                        </tr>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div -->
<%-- @ include file="includes/_footer.jsp" --%>


</body>


<script src="../bootstrap3/js/bootstrap.js" type="text/javascript"></script>

<!--  Plugins -->
<script src="../assets/js/ct-paper-checkbox.js"></script>
<script src="../assets/js/ct-paper-radio.js"></script>
<script src="../assets/js/bootstrap-select.js"></script>
<script src="../assets/js/bootstrap-datepicker.js"></script>



</html>