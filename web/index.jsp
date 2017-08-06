<%@ page import="models.UserModel" %>
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
<body>

<div class="wrapper">
    <%@ include file="includes/_navbar.jsp" %>

    <div class="demo-header demo-header-image">
        <div class="motto">
            <h1 class="title-uppercase">Trade & Exchange</h1>

            <div style="width: 40%; margin-left: 30%;">
                <ul class="nav nav-pills nav-pills-danger nav-justified text-center" role="tablist">
                    <li class="active">
                        <a href="#description" role="tab" data-toggle="tab">
                            List used cars
                        </a>
                    </li>
                    <li class="active">
                        <a href="#concept" role="tab" data-toggle="tab">
                            List new cars
                        </a>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</div>
<div class="container">
    <h1>Use Bootstrap's carousel to show multiple items per slide.</h1>
    <div class="row">
        <div class="col-md-12">
            <div class="carousel slide multi-item-carousel" id="theCarousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/f44336/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/e91e63/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/9c27b0/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/673ab7/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/4caf50/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/8bc34a/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/8bc34a/000000" class="img-responsive"></a></div>
                    </div>

                    <!--  Example item end -->
                </div>
                <a class="left carousel-control" href="#theCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                <a class="right carousel-control" href="#theCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <h1>Use Bootstrap's carousel to show multiple items per slide.</h1>
    <div class="row">
        <div class="col-md-12">
            <div class="carousel slide multi-item-carousel" id="theCarouselNew">
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/f44336/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/e91e63/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/9c27b0/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/673ab7/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/4caf50/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/8bc34a/000000" class="img-responsive"></a></div>
                    </div>
                    <div class="item">
                        <div class="col-xs-4"><a href="#1"><img src="http://placehold.it/300/8bc34a/000000" class="img-responsive"></a></div>
                    </div>

                    <!--  Example item end -->
                </div>
                <a class="left carousel-control" href="#theCarouselNew" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                <a class="right carousel-control" href="#theCarouselNew" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
            </div>
        </div>
    </div>
</div>
<div>
    <%@include file="includes/_footer.jsp" %>
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