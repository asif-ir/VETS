/**
* Created by vijayn on 8/5/2017.
*/
<%
    if (session.getAttribute("username") == null) {
        request.setAttribute("message", "Error in Login");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>