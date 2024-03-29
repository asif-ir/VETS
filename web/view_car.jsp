<!doctype html>
<%@ page import="models.CarModel" %>
<%@ page import="entities.Car" %>
<%
    Car car = new CarModel().getCar(Long.parseLong(request.getParameter("id")));
%>
</html>

<%@ page import="entities.Car" %>
<%@ page import="models.CarModel" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="models.UserModel" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="../assets/paper_img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Buy | Trade & Exchange</title>

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
    <link href="assets/css/carousel.css" rel="stylesheet">

</head>
<body>
<%@include file="includes/_login_register_navbar.jsp" %>

<div class="wrapper">
    <div class="register-background">
        <div class="filter-black"></div>
        <div class="container text-center">

            <div class="row" style="color: #00bbff; text-align: left;">
                <h4>&nbsp;<%=car.getBrand_name()%> - <em><%=car.getModel_name()%>
                </em></h4>
            </div>
            <hr>

            <div class="col-md-4">
                <img src="assets/cars/<%= car.getId() %>.jpg" alt="<%=car.getBrand_name()%>"
                     class="img-thumbnail img-responsive"><br>
                <%
                    if (session.getAttribute("username") != null) {
                %>
                <form class="register-form" method="post" action="add-transaction" style="z-index: 999;">
                    <input type="hidden" name="car_buy_id" value="<%=request.getParameter("id")%>">

                    <label>Select Car to Trade: </label>
                    <select class="form-control" name="car_sell_id" id="car_sell_id" style="z-index: 999;" required>
                        <%
                            for (Car c : new UserModel().getMyUnsoldCars(session.getAttribute("username").toString())) {
                        %>
                        <option value="<%=c.getId()%>"><%=c.getBrand_name()%> - <%=c.getModel_name()%>
                        </option>
                        <%
                            }
                        %>
                    </select>
                    <br><br>
                    <input type="submit" class="btn btn-fill btn-success btn-block" value="Trade" style="">
                </form>
                <%
                } else {

                %>
                <a href="login.jsp" style="color: #f07d72;">You need to login to trade!</a>
                <%
                    }
                %>
            </div>

            <div class="col-md-7 col-md-offset-1">
                <table class="table table-stripped table-hover"
                       style="color: white; background-color: rgba(0,0,0,0.3)">
                    <tr>
                        <th>Model Name :</th>
                        <td><%=car.getModel_name()%>
                        </td>
                    </tr>

                    <tr>
                        <th>Brand Name :</th>
                        <td><%=car.getBrand_name()%>
                        </td>
                    <tr/>

                    <tr>
                        <th>Engine :</th>
                        <td><%=car.getEngine()%>
                        </td>
                    </tr>

                    <tr>
                        <th>City :</th>
                        <td><%=car.getCity()%>
                        </td>
                    </tr>

                    <tr>
                        <th>Fuel :</th>
                        <td><%=car.getFuel()%>
                        </td>
                    </tr>

                    <tr>
                        <th>Odometer Reading :</th>
                        <td><%=car.getOdo_reading()%>
                        </td>
                    </tr>

                    <tr>
                        <th>Color :</th>
                        <td><%=car.getColor()%>
                        </td>
                    </tr>

                    <tr>
                        <th>Power Steering :</th>
                        <td><%=car.isPower_steering()%>
                        </td>
                    </tr>

                    <tr>
                        <th>Insurance :</th>
                        <td><%=car.getInsurance()%>
                        </td>
                    </tr>

                    <tr>
                        <th>Manufacturing Year :</th>
                        <td><%=car.getManufacturing_year()%>
                        </td>
                    </tr>

                    <tr>
                        <th>Mileage :</th>
                        <td><%=car.getMileage()%>
                        </td>
                    </tr>

                    <tr>
                        <th>Seating capacity :</th>
                        <td><%=car.getSeating_capacity() %>
                        </td>
                    </tr>
                </table>
                <div class="container tex-center">
                    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                        <input type="hidden" name="cmd" value="_s-xclick">
                        <input type="hidden" name="hosted_button_id" value="XFZX2RLX7RDDA">
                        <table>
                            <tr><td><input type="hidden" name="on0" value=""></td></tr><tr><td><select name="os0">
                            <option value="Deluxe Plan">Deluxe Plan : $3.00 USD - yearly</option>
                            <option value="Enterprise Plan">Enterprise Plan : $25.00 USD - yearly</option>
                        </select> </td></tr>
                        </table>
                        <input type="hidden" name="currency_code" value="USD">
                        <input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_subscribeCC_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online!">
                        <img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
                    </form>
                </div>
                <br>
            </div>
            <br><br><br>

            <div class="container">
                <div id="disqus_thread"></div>
                <script>
                    (function () { // DON'T EDIT BELOW THIS LINE
                        var d = document, s = d.createElement('script');
                        s.src = 'https://vets-1.disqus.com/embed.js';
                        s.setAttribute('data-timestamp', +new Date());
                        (d.head || d.body).appendChild(s);
                    })();
                </script>
                <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments
                    powered by Disqus.</a></noscript>
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