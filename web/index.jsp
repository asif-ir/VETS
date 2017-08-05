<%@ page import="models.UserModel" %>
<%@ page import="models.CarModel" %>
<%= new UserModel().getUser(2).getFirst_name()%>
<%=new CarModel().getCar(2)%>