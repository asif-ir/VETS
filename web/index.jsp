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

</head>
<body>

<div class="wrapper">
    <div class="demo-header demo-header-image">
        <div class="motto">
            <h1 class="title-uppercase">Paper Kit</h1>
            <h3>Make your mark with a new design.</h3>
        </div>
    </div>

    <%@ include file="includes/_navbar.jsp" %>
</div>
<div>
    <%@include file="includes/_footer.jsp" %>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live
                    the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large
                    language ocean. A small river named Duden flows by their place and supplies it with the necessary
                    regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.
                    Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic
                    life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the
                    far World of Grammar. </p>
            </div>
            <div class="modal-footer">
                <div class="left-side">
                    <button type="button" class="btn btn-default btn-simple" data-dismiss="modal">Never mind</button>
                </div>
                <div class="divider"></div>
                <div class="right-side">
                    <button type="button" class="btn btn-danger btn-simple">Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!--    end modal -->


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