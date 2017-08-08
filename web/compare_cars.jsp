<%@ page import="models.UserModel" %>
<%@ page import="entities.Car" %>
<%@ page import="models.CarModel" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="../assets/paper_img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Compare | Trade & Exchange</title>

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

<%@include file="includes/_login_register_navbar.jsp" %>

<div class="wrapper">
    <div class="register-background">
        <div class="filter-black"></div>
        <div class="container">
            <div class="row">
                <h2 style="color: #00bbff; text-align: left;">Compare Cars</h2>
                <hr>

                <div class="container-fluid">
                    <div class="container">
                        <div class="col-md-3">
                            <select class="form-control" name="cmp_car_t1" id="cmp_car_t1">
                                <%
                                    for (Car c : new CarModel().getCarList()) {
                                %>
                                <option value="<%=c.getId()%>"><%=c.getBrand_name()%> - <%=c.getModel_name()%>
                                </option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                        <div class="col-md-3 col-md-offset-1">
                            <select class="form-control" name="cmp_car_t2" id="cmp_car_t2">
                                <%
                                    for (Car c : new CarModel().getCarList()) {
                                %>
                                <option value="<%=c.getId()%>"><%=c.getBrand_name()%> - <%=c.getModel_name()%>
                                </option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                        <div class="col-md-3 col-md-offset-1">
                            <button class="btn btn-info btn-fill btn-block" on id="compare_btn"><i class="fa fa-search"
                                                                                                   aria-hidden="true"></i>
                                Compare
                            </button>
                        </div>
                    </div>
                </div>
                <div class="container" id="results">
                </div>
            </div>
        </div>
        <br><br><br><br>
        <div class="footer register-footer text-center">
            <h6>&copy; 2017, All rights reserved.</h6>
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
<script>
    $("#compare_btn").click(function (event) {
        $("#results").html("<br><div class='text-center'><img src='assets/paper_img/loading.gif' style='width: 15%; height: 15%;'></div>");

        console.log($("#cmp_car_t1 option:selected").text());
        console.log($("#cmp_car_t2 option:selected").text());

        $.post("/compare-list",
            {
                car1: $("#cmp_car_t1 option:selected").val(),
                car2: $("#cmp_car_t2 option:selected").val()
            },
            function (data, status, xhr) {
                $("#results").html(data);
            });
    });
</script>

</html>