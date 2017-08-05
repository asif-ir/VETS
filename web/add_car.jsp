<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="../assets/paper_img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Register | Trade & Exchange</title>

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
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1 ">
                    <div class="register-card">
                        <h3 class="title">Register Car To Sell</h3>
                        <form class="register-form" method="post" action="add-car">
                            <label>Model Name</label>
                            <input type="text" class="form-control" name="model_name" id="model_name"
                                   placeholder="Model Name">

                            <label>Brand Name</label>
                            <select class="form-control" name="brand_name" id="brand_name">
                                <option selected disabled>Brand Name</option>
                                <option value="Audi">Audi</option>
                                <option value="Aston Martin">Aston Martin</option>
                                <option value="Bently">Bently</option>
                                <option value="BMW">BMW</option>
                                <option value="Bugatti">Bugatti</option>
                                <option value="Cheverolet">Cheverolet</option>
                                <option value="Ferrari">Ferrari</option>
                                <option value="Ford">Ford</option>
                                <option value="Honda">Honda</option>
                                <option value="Hyundai">Hyundai</option>
                                <option value="Jaguar">Jaguar</option>
                                <option value="Landrover">Landrover</option>
                                <option value="Mercedes-Benz">Mercedes-Benz</option>
                                <option value="Nissan">Nissan</option>
                                <option value="Renault">Renault</option>
                                <option value="Skoda">Skoda</option>
                                <option value="Suzuki">Suzuki</option>
                                <option value="Tata Motors">Tata Motors</option>
                                <option value="Volkswagen">Volkswagen</option>
                                <option value="Volvo">Volvo</option>
                            </select>

                            <label>Engine</label>
                            <input type="text" class="form-control" name="engine" id="engine"
                                   placeholder="Engine in cc">

                            <label>City</label>
                            <select class="form-control" name="city" id="city">
                                <option selected disabled>City</option>
                                <option value="Baroda">Baroda</option>
                                <option value="Bhubaneswar">Bhubaneswar</option>
                                <option value="Banglore">Banglore</option>
                                <option value="Amritsar">Amritsar</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Hyderabad">Hyderabad</option>
                                <option value="Jaipur">Jaipur</option>
                                <option value="Kolkata">Kolkata</option>
                                <option value="Lucknow">Lucknow</option>
                                <option value="Mumbai">Mumbai</option>
                                <option value="Nagpur">Nagpur</option>
                                <option value="Pune">Pune</option>
                            </select>

                            <label>Fuel</label>
                            <select class="form-control" name="fuel" id="fuel">
                                <option selected disabled>Fuel</option>
                                <option value="Petrol">Petrol</option>
                                <option value="Diesel">Diesel</option>
                                <option value="CNG">CNG</option>
                                <option value="LPG">LPG</option>
                                <option value="Others">Others</option>
                            </select>

                            <label>Odometer Reading</label>
                            <input type="number" class="form-control" name="odo_reading" id="odo_reading"
                                   placeholder="Odometer reading">

                            <label>Color</label>
                            <input type="text" class="form-control" name="color" id="color" placeholder="Color">

                            <label>Number Of Owners </label>
                            <input type="number" class="form-control" name="no_of_owners" id="no_of_owners"
                                   placeholder="Number Of Owners">

                            <label>Power Steering</label>
                            <select class="form-control" name="power_steering" id="power_steering">
                                <option selected>Yes</option>
                                <option value="Petrol">No</option>
                            </select>

                            <label>Insurance</label>
                            <input type="text" class="form-control" name="insurance" id="insurance"
                                   placeholder="Insurance">

                            <label>Insurance Expiry Date</label>
                            <input type="date" class="form-control" name="insurance_expiry" id="insurance_expiry"
                                   placeholder="Insurance Expiry Date">

                            <label>Manufacturing Year</label>
                            <input type="number" class="form-control" name="manufacturing_year" id="manufacturing_year"
                                   placeholder="Manufacturing Year">

                            <label>Registration Date</label>
                            <input type="date" class="form-control" name="registration_date" id="registration_date"
                                   placeholder="Registration Date">

                            <label>Registration Type</label>
                            <select class="form-control" name="registration_type" id="registration_type">
                                <option selected disabled>Registartion Type</option>
                                <option value="RDS">RDS</option>
                                <option value="DMS">RMS</option>
                                <option value="MNP">MNP</option>
                                <option value="PDP">PDP</option>
                                <option value="TRS">TRS</option>
                                <option value="NIP">NIP</option>
                                <option value="MJK">MJK</option>
                            </select>

                            <label>RTO Location</label>
                            <input type="text" class="form-control" name="rto_location" id="rto_location"
                                   placeholder="RTO Location">

                            <label>Date Of Registration on Webiste</label>
                            <input type="date" class="form-control" name="date_of_reg_on_website"
                                   id="date_of_reg_on_website" placeholder="Date of Registration on Webiste">

                            <label>Mileage</label>
                            <input type="number" class="form-control" name="mileage" id="mileage" placeholder="Mileage">

                            <label>Seating Capacity</label>
                            <input type="number" class="form-control" name="seating_capacity" id="seating_capacity"
                                   placeholder="Seating Capacity">

                            <label>Owned By</label>
                            <input type="text" class="form-control" name="owned_by" id="owned_by"
                                   placeholder="Owned By">

                            <button class="btn btn-danger btn-block">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer register-footer text-center">
            <h6>&copy; 2017, made with <i class="fa fa-heart heart"></i> by Creative Tim</h6>
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