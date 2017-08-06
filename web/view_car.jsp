<!doctype html>
<%@ page import="models.CarModel" %>
<%@ page import="entities.Car" %>

<%!
    Car car=new CarModel().getCar(1);
%>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="../assets/paper_img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Profile | Trade & Exchange</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>

    <link href="../bootstrap3/css/bootstrap.css" rel="stylesheet"/>
    <link href="../assets/css/ct-paper.css" rel="stylesheet"/>
    <link href="../assets/css/demo.css" rel="stylesheet"/>
    <link href="../assets/css/examples.css" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>

</head>
<body>
<%@include file="includes/_navbar.jsp" %>

<div class="wrapper">
    <div class="profile-background">
        <div class="filter-black"></div>
    </div>

    <div class="img-container">
        <img src="assets/cars/<%=car.getId()%>.jpg" alt="Cinque Terre" class="img img-rounded" width="auto" height="auto">
    </div>
    <div class="container">
        <table class="table table-stripped table-hover">
            <tr>
                <th>Model Name :</th><td><%=car.getModel_name()%></td>
            </tr>

            <tr>
                <th>Brand Name :</th><td><%=car.getBrand_name()%></td>
            <tr/>

            <tr>
                <th>Engine :</th><td><%=car.getEngine()%></td>
            </tr>

            <tr>
                <th>City :</th><td><%=car.getCity()%></td>
            </tr>

            <tr>
                <th>Fuel :</th><td><%=car.getFuel()%></td>
            </tr>

            <tr>
                <th>Odometer Reading :</th><td><%=car.getOdo_reading()%></td>
            </tr>

            <tr>
                <th>Color :</th><td><%=car.getColor()%></td>
            </tr>

            <tr>
                <th>Power Steering :</th><td><%=car.isPower_steering()%></td>
            </tr>

            <tr>
                <th>Insurance :</th><td><%=car.getInsurance()%></td>
            </tr>

            <tr>
                <th>Manufacturing Year :</th><td><%=car.getManufacturing_year()%></td>
            </tr>

            <tr>
                <th>Mileage :</th><td><%=car.getMileage()%></td>
            </tr>

            <tr>
                <th>Seating capacity :</th><td><%=car.getSeating_capacity() %></td>
            </tr>
            <%--<tr>--%>
                <%--<td><%=car.getModel_name()%></td>--%>
                <%--<td><%=car.getBrand_name().toString()%></td>--%>
            <%--</tr>--%>
        </table>
    </div>
    <%@ include file="includes/_footer.jsp" %>


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