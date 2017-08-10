<%--
  Created by IntelliJ IDEA.
  User: vijayn
  Date: 8/9/2017
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <title>Pie Chart Example</title>
    <script src="pie.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        function createPieCharts() {
           /* var labels = new Array('Otters', 'Badgers', 'Stoats', 'Bears');
            var values = new Array(7.3, 4.2, 4.1, 3.6);
            var colors = new Array('#EAA83A', '#FEC56B', '#51C5D4', '#89DAEF');*/
           var labels = new Array('New','Used');
            var values = new Array(7.3, 4.2);
            var colors = new Array('#EAA83A', '#FEC56B')
            drawPie(labels, values, colors, 'cPie1');
        }
    </script>
    <style>
        BODY
        {
            font-family: Arial, helvetica, Sans-Serif;
        }
    </style>
</head>
<body onload="createPieCharts()">

Sample page to help ensure that SuperPie pie charts are working on your site <br /><br />
<canvas id="cPie1" width="340" height="210"></canvas>

<br /><br />

</body>
</html>

