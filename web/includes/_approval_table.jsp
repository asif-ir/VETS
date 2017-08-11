<%@ page import="entities.Transaction" %>
<%@ page import="models.TransactionModel" %>
<%@ page import="java.util.List" %>
<%@ page import="models.UserModel" %>
<%@ page import="entities.User" %>
<%@ page import="entities.Car" %>
<%@ page import="models.CarModel" %>

<table class="table table-striped table-hover">
    <thead>
    <td>Owner Name</td>
    <td>Brand Name</td>
    <td>Model Name</td>
    <td>Approval</td>
    </thead>

    <tbody>
    <%
        List<Car> cars = new CarModel().getCarList();
        for (Car car : cars) {
            try {
                if (car.getIs_validated()==0) {
    %>
    <tr id="row-<%=car.getId()%>">
        <td><%=new UserModel().getUser(car.getOwned_by()).getFirst_name() + " " + new UserModel().getUser(car.getOwned_by()).getLast_name()%>
        </td>
        <td><%=car.getBrand_name()%>
        </td>
        <td><%=car.getModel_name()%>
        </td>
        <td>
            <div class="col-md-4 col-md-offset-2">
                <input type="text" class="form-control" id="updated_price-<%=car.getId()%>" name="updatedPrice"
                       value="<%=car.getPrice()%>">
            </div>
            <div class="col-md-3 col-md-offset-2">
                <button class="butt btn btn-success" id="approval_btn-<%=car.getId()%>" name="approval">Approve</button>
            </div>
        </td>
    </tr>
    <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>
    </tbody>
</table>