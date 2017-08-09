/**
* Created by vijayn on 8/5/2017.
*/
<%
    if (session.getAttribute("username") == null) {
        request.setAttribute("message", "You must login first");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>