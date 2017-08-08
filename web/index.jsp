<%@ page import="entities.Car" %>
<%@ page import="models.CarModel" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="assets/paper_img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Home | Trade & Exchange</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>

    <link href="bootstrap3/css/bootstrap.css" rel="stylesheet"/>
    <link href="assets/css/ct-paper.css" rel="stylesheet"/>
    <link href="assets/css/demo.css" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/carousel.css">
</head>
<body style="background-image: url('assets/paper_img/landscape.jpg')">

<div class="wrapper">
    <%@ include file="includes/_navbar.jsp" %>
    <div class="demo-header demo-header-image">
        <div class="motto">
            <h1 class="title-uppercase">Trade & Exchange</h1>

            <div style="width: 40%; margin-left: 30%;">
                <ul class="nav nav-pills nav-pills-danger nav-justified text-center" role="tablist">
                    <li class="active">
                        <a href="list_used.jsp">
                            List used cars
                        </a>
                    </li>
                    <li class="active">
                        <a href="list_new.jsp">
                            List new cars
                        </a>
                    <li class="active">
                        <a href="search.jsp">
                            Search
                        </a>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</div>
<br><br><br>
<div class="container" style="background-color: rgba(0,0,0,0.3);">
    <h3 style="color: white;">Recent Used Cars Updated.</h3>
    <hr>
    <div class="row">
        <div class="col-md-12">
            <div class="carousel slide multi-item-carousel" id="theCarousel">
                <div class="carousel-inner">
                    <%
                        List<Car> carList = (new CarModel()).getUsedCarList(10);

                        int count = 0;

                        for (Car car : carList) {
                            if (count++ == 0) {
                    %>
                    <div class="item active">
                        <div class="col-xs-4"><a href=view_car.jsp?id=<%=car.getId()%>><img
                                src="assets/cars/<%=car.getId()%>.jpg"
                                class="img-responsive">
                        </a></div>
                    </div>
                    <%
                    } else {
                    %>
                    <div class="item"><%--assets/cars/{id}+".jpg"--%>
                        <div class="col-xs-4"><a href=view_car.jsp?id=<%=car.getId()%>><img
                                src="assets/cars/<%=car.getId()%>.jpg"
                                class="img-responsive">
                        </a></div>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>
                <a class="left carousel-control" href="#theCarousel" data-slide="prev"><i
                        class="glyphicon glyphicon-chevron-left"></i></a>
                <a class="right carousel-control" href="#theCarousel" data-slide="next"><i
                        class="glyphicon glyphicon-chevron-right"></i></a>
            </div>
        </div>
    </div>
</div>
<br><br><br>
<div class="container" style="background-color: rgba(0,0,0,0.3);">
    <h3 style="color: white;">Recent New Car Arrivals</h3>
    <hr>
    <div class="row">
        <div class="col-md-12">
            <div class="carousel slide multi-item-carousel" id="theCarouselNew">
                <div class="carousel-inner">
                    <%
                        List<Car> carListNew = (new CarModel()).getNewCarList(10);

                        count = 0;

                        for (Car car : carListNew) {
                            if (count++ == 0) {
                    %>
                    <div class="item active">
                        <div class="col-xs-4"><a href=view_car.jsp?id=<%=car.getId()%>><img
                                src="assets/cars/<%=car.getId()%>.jpg"
                                class="img-responsive">
                        </a></div>
                    </div>
                    <%
                    } else {
                    %>
                    <div class="item"><%--assets/cars/{id}+".jpg"--%>
                        <div class="col-xs-4"><a href=view_car.jsp?id=<%=car.getId()%>><img
                                src="assets/cars/<%=car.getId()%>.jpg"
                                class="img-responsive">
                        </a></div>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>
                <a class="left carousel-control" href="#theCarouselNew" data-slide="prev"><i
                        class="glyphicon glyphicon-chevron-left"></i></a>
                <a class="right carousel-control" href="#theCarouselNew" data-slide="next"><i
                        class="glyphicon glyphicon-chevron-right"></i></a>
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