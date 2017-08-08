<%@ page import="utils.Constants" %>
<nav class="navbar navbar-ct-transparent navbar-fixed-top" role="navigation-demo" id="register-navbar">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<%=Constants.ROOT_URL%>">Trade & Exchange</a>
            <ul class="nav navbar-nav navbar-left">
                <li>
                    <a href="list_used.jsp" class="btn btn-simple">Used Cars</a>
                </li>
                <li>
                    <a href="list_new.jsp" class="btn btn-simple">New Cars</a>
                </li>
                <li>
                    <a href="compare_cars.jsp" class="btn btn-simple">Compare Cars</a>
                </li>
            </ul>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navigation-example-2">
            <ul class="nav navbar-nav navbar-right">
                <%
                    if (session.getAttribute("username") != null) {
                %>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: white;"><i class="fa fa-user"></i>
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="profile.jsp" class="btn btn-simple" style="color: black;">View My Cars</a></li>
                        <li><a href="add_car.jsp" class="btn btn-simple" style="color: black;">Add Car</a></li>
                        <li><a href="logout" class="btn btn-simple" >Logout</a></li>
                    </ul>
                </li>
                <%
                } else {
                %>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color: white;">Login/Register
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="login.jsp" class="btn btn-simple" style="color: black;">Login</a></li>
                        <li><a href="register.jsp" class="btn btn-simple" style="color: black;">Register</a></li>
                    </ul>
                </li>
                <%
                    }
                %>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-->
</nav>
