<%@ page import="models.*" %>
<%@ page import="entities.Car" %>
<%@ page import="java.util.HashMap" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="assets/paper_img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <script src="assets/js/pie.1.3.js"></script>
    <title>Buy | Trade & Exchange</title>

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
    <link href="assets/css/carousel.css" rel="stylesheet">

</head>
<body>
<%@include file="includes/_login_register_navbar.jsp" %>

<div class="wrapper">
    <div class="register-background">
        <div class="filter-black"></div>
        <div class="container" style="background-color: rgba(0,0,0,0.3);">
            <ul class="nav nav-tabs" style="font-weight: bolder; color: #00bbff;">
                <li class="active" style="color: #00bbff;"><a data-toggle="tab" href="#home">Recent Transactions</a>
                </li>
                <li style="color: #00bbff;"><a data-toggle="tab" href="#menu1">Customers</a></li>
                <li style="color: #00bbff;"><a data-toggle="tab" href="#menu2">Graphs</a></li>
                <li style="color: #00bbff;"><a data-toggle="tab" href="#menu3">Approval Status</a></li>
            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <h3>Recent Transactions</h3>
                    <hr>
                    <div>
                        <%@include file="includes/_transactions_table.jsp" %>
                    </div>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <h3>Customers</h3>
                    <hr>
                    <div>
                        <%@include file="includes/_customers_table.jsp" %>
                    </div>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <h3>Graphs</h3>
                    <hr>
                    <table>
                        <tr <%--class="container"--%>>

                            <%
                                CarModel carModel = new CarModel();
                                List<Car> cars = carModel.getCarList();
                                int total_cars = cars.size();
                                int used_car_count = 0;
                                for (Car car : cars) {
                                    if (car.getOdo_reading() != 0)
                                        used_car_count++;
                                }
                                int new_car_count = total_cars - used_car_count;
                                //System.out.println(new_car_count);
                                //response.getWriter().print("<div onload=\"createPieCharts("+used_car_count+" , "+new_car_count+")\""+"</div>");
                            %>

                            <td width="50%" <%--class="text-center col-md-6"--%>>
                                <canvas id="cPie1" width="340" height="210"></canvas>

                                <script type="text/javascript">
                                    createPieCharts(<%=used_car_count%>, <%=new_car_count%>);
                                </script>
                                <script type="text/javascript">
                                    window.onload = function () {
                                        var chart = new CanvasJS.Chart("chartContainer",
                                            {
                                                title: {
                                                    text: "Cars by Brands"
                                                },

                                                data: [
                                                    {
                                                        type: "stackedBar", /*"bar"*/

                                                        dataPoints: [
                                                            <%
                                                            List<Car> cars4map=new CarModel().getCarList();
                                                            HashMap<String,Integer> car_map = new HashMap<>();
                                                            HashMap<String,Integer> used_car_map = new HashMap<>();
                                                            for (Car car:cars4map){

                                                                    String brand = car.getBrand_name();
                                                                    brand = brand.toUpperCase();
                                                                    brand = brand.replaceAll("\\s","");
                                                                    if(car_map.containsKey(brand)){
                                                                        car_map.put(brand,car_map.get(brand)+1);
                                                                        if(car.getOdo_reading()==0){
                                                                            used_car_map.put(brand,used_car_map.get(brand)+1);
                                                                        }
                                                                    }
                                                                    else {
                                                                        car_map.put(brand,1);
                                                                        if(car.getOdo_reading()==0){
                                                                            used_car_map.put(brand,1);
                                                                        }
                                                                        else {
                                                                            used_car_map.put(brand,0);
                                                                        }
                                                                    }

                                                            }
                                                            int map_size = car_map.size(),i=0;
                                                            for (String key : car_map.keySet()) {
                                                                i++;
                                                            %>
                                                            {
                                                                x: <%=(i+1)*10 %>,
                                                                y: <%=car_map.get(key)%>,
                                                                label: '<%=key%>'
                                                            }
                                                            <%
                                                               if(i!=map_size)
                                                                   {
                                                                       %>, <%
                                       }
                                }
                                %>
                                                        ]
                                                    },
                                                    {
                                                        type: "stackedBar",
                                                        dataPoints: [
                                                            <%
                                                            int map_size2 = used_car_map.size();
                                                            i=0;
                                                            for (String key : used_car_map.keySet()) {
                                                                i++;
                                                            %>
                                                            {
                                                                x: <%=(i+1)*10 %>,
                                                                y: <%=used_car_map.get(key)%>,
                                                                label: '<%=key%>'
                                                            }
                                                            <%
                                                               if(i!=map_size2)
                                                                   {
                                                                       %>, <%
                                       }
                                }
                                                        %>

                                                        ]
                                                    }
                                                ]
                                            });

                                        chart.render();
                                    }
                                </script>
                            </td>
                            <td width="50%">
                                <div <%--class="text-center col-md-6"--%> id="chartContainer"
                                                                          style="height: 400px; width: 100%;">
                                </div>
                                <script src="assets/js/canvasjs.min.js"></script>
                                <br><br>
                            </td>
                        </tr>
                    </table>
                    <br>
                </div>
                <div id="menu3" class="tab-pane fade">
                    <h3>Approval Status</h3>
                    <hr>
                    <div>
                        <%@include file="includes/_approval_table.jsp" %>
                    </div>
                </div>
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

<script>
    <%
        List<Car> _cars = new CarModel().getCarList();
        for (Car car : _cars) {
            try {
    %>
    $("#approval_btn-<%=car.getId()%>").click(function (event) {
        $.post(
            "/car-approval",
            {
                id: <%=car.getId()%>,
                price: <%=car.getPrice()%>
            },
            function (data) {
                $("#row-<%=car.getId()%>").remove();
            }
        );
    });
    <%
              } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>
</script>

</html>