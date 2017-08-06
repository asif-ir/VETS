<%@ page import="utils.Constants" %>
<nav class="navbar navbar-ct-transparent navbar-relative " role="navigation-demo" id="register-navbar"
     style="color: white;">
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
            </ul>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navigation-example-2">
            <ul class="nav navbar-nav navbar-right">
                <%
                    if (session.getAttribute("username") != null) {
                %>
                <li>
                    <a href="logout" class="btn btn-simple">Logout</a>
                </li>
                <%
                } else {
                %>
                <li>
                    <a href="register.jsp" class="btn btn-simple">Register</a>
                </li>
                <li>
                    <a href="login.jsp" class="btn btn-simple">Login</a>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>