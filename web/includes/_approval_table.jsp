<%@ page import="entities.Transaction" %>
<%@ page import="models.TransactionModel" %>
<%@ page import="java.util.List" %>
<%@ page import="models.UserModel" %>
<%@ page import="entities.User" %>
<%@ page import="entities.Car" %>
<%@ page import="models.CarModel" %>

<table class="table table-striped table-hover">
    <thead>
    <tr>Owner Name</tr>
    <tr>Brand Name</tr>
    <tr>Model Name</tr>
    <tr>Approval</tr>
    </thead>

    <tbody>
    <%
        List<Car> cars = new CarModel().getCarList();
        for (Car car : cars) {
            try {
    %>
    <tr id="row-<%=car.getId()%>">
        <td><%=new UserModel().getUser(car.getOwned_by()).getFirst_name() + " " + new UserModel().getUser(car.getOwned_by()).getLast_name()%>
        </td>
        <td><%=car.getBrand_name()%>
        </td>
        <td><%=car.getModel_name()%>
        </td>
        <td>
            <input type="text" class="form-control" id="updatedPrice-<%=car.getId()%>" name="updatedPrice" value="<%=car.getPrice()%>">
            <button class="butt btn btn-success" id="approval_btn-<%=car.getId()%>" name="approval">Approve</button>
        </td>
    </tr>
    <%
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>
    </tbody>
</table>