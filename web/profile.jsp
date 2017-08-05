<!doctype html>
<jsp:include page="_session_validate.jsp"></jsp:include>
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
<%@include file="includes/_navbar.jsp"%>

<div class="wrapper">
    <div class="profile-background">
        <div class="filter-black"></div>
    </div>
    <div class="profile-content section-nude">
        <div class="container">
            <div class="row owner">
                <div class="col-md-2 col-md-offset-5 col-sm-4 col-sm-offset-4 col-xs-6 col-xs-offset-3 text-center">
                    <div class="avatar">
                        <img src="../assets/paper_img/chet_faker_2.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                    </div>
                    <div class="name">
                        <h3><%=session.getAttribute("username")%><br /></h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                    <p>An artist of considerable range, Chet Faker — the name taken by Melbourne-raised, Brooklyn-based Nick Murphy — writes, performs and records all of his own music, giving it a warm, intimate feel with a solid groove structure. </p>
                    <br />
                    <btn class="btn"><i class="fa fa-cog"></i> Settings</btn>
                </div>
            </div>
            <div class="profile-tabs">
                <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                        <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
                            <li class="active"><a href="#follows" data-toggle="tab">Follows</a></li>
                            <li><a href="#following" data-toggle="tab">Following</a></li>
                            <!--                                 <li><a href="#following" data-toggle="tab">Following</a></li> -->
                        </ul>
                    </div>
                </div>
                <div id="my-tab-content" class="tab-content">
                    <div class="tab-pane active" id="follows">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <ul class="list-unstyled follows">
                                    <li>
                                        <div class="row">
                                            <div class="col-md-2 col-md-offset-0 col-xs-3 col-xs-offset-2">
                                                <img src="../assets/paper_img/flume.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                            </div>
                                            <div class="col-md-7 col-xs-4">
                                                <h6>Flume<br /><small>Musical Producer</small></h6>
                                            </div>
                                            <div class="col-md-3 col-xs-2">
                                                <div class="unfollow" rel="tooltip" title="Unfollow">
                                                    <label class="checkbox" for="checkbox1" >
                                                        <input type="checkbox" value="" id="checkbox1" data-toggle="checkbox" checked>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <hr />
                                    <li>
                                        <div class="row">
                                            <div class="col-md-2 col-md-offset-0 col-xs-3 col-xs-offset-2">
                                                <img src="../assets/paper_img/banks.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                            </div>
                                            <div class="col-md-7 col-xs-4">
                                                <h6>Banks<br /><small>Singer</small></h6>
                                            </div>
                                            <div class="col-md-3 col-xs-2">
                                                <div class="unfollow" rel="tooltip" title="Unfollow">
                                                    <label class="checkbox" for="checkbox1" >
                                                        <input type="checkbox" value="" id="checkbox1" data-toggle="checkbox" checked>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane text-center" id="following">
                        <h3 class="text-muted">Not following anyone yet :(</h3>
                        <btn class="btn btn-warning btn-fill">Find artists</btn>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<%@ include file="includes/_footer.jsp"%>


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