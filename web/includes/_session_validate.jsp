/**
 * Created by vijayn on 8/5/2017.
 */
<%
 if(session.getAttribute("username")==null){
     request.getRequestDispatcher("login.jsp").forward(request,response);
 }
%>