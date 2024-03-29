<%@ page import="entities.Car" %>
<%@ page import="models.UserModel" %>
<%@ page import="java.util.List" %>

<%@include file="includes/_session_validate.jsp" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="assets/paper_img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>My Cars | Trade & Exchange</title>

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

</head>
<body>
<%
    String msg = "";
    if (request.getAttribute("message")!=null) {
        msg = request.getAttribute("message").toString();
    }
    if (msg.equals("Transaction Failed")) {
%>
<script>
    alert("Transaction Failed!");
</script>
<%
} else if (msg.equals("Transaction Successful")) {
    response.getWriter().print("<script>\n" +
            "    alert("+ request.getAttribute("order_msg").toString()+");" +
            "</script>");
    }
%>
<%@include file="includes/_login_register_navbar.jsp" %>

<div class="wrapper">
    <div class="register-background">
        <%--<div class="filter-black"></div>--%>
        <div class="container">
            <div>
                <h2 style="color: #00bbff"><%=session.getAttribute("username").toString().toUpperCase()%> - My Cars</h2>
                <hr>
                <%
                    List<Car> cars = new UserModel().getMyUnsoldCars(session.getAttribute("username").toString());

                    for (Car car : cars) {
                %>
                <a href="view_car.jsp?id=<%=car.getId()%>">
                    <div class="row" style="background-color: rgba(0, 0, 0, 0.2)">
                        <div class="col-md-4 col-sm-3 col-md-2">
                            <h4 style="color: #5BCAFF;"><%=car.getBrand_name()%>
                            </h4><br>
                            <img src="assets/cars/<%= car.getId() %>.jpg" alt="<%=car.getBrand_name()%>"
                                 class="img-thumbnail img-responsive">
                        </div>
                        <div class="col-md-8 col-md-offset-1 text-right" style="color: white">
                            <br><br>
                            <button href="#fakelink" class="btn btn-fill btn-primary">Rs. <%=car.getPrice()%>
                            </button>
                            <br><br>
                            <p class=""><em><strong>Manufacturing Year: </strong></em><%=car.getManufacturing_year()%>
                            </p>
                            <br>
                            <p class=""><em><strong>Engine: </strong></em><%=car.getEngine()%>
                            </p>
                            <br>
                            <p class=""><em><strong>Odometer Reading: </strong></em><%=car.getOdo_reading()%> kms</p>
                        </div>
                    </div>
                </a>
                <br>
                <%
                    }
                %>

            </div>
        </div>
        <div class="footer register-footer text-center">
            <h6>Made with <i class="fa fa-heart heart"></i></h6>
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

</html>