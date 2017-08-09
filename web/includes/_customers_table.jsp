<%@ page import="entities.Transaction" %>
<%@ page import="models.TransactionModel" %>
<%@ page import="java.util.List" %>
<%@ page import="models.UserModel" %>
<%@ page import="entities.User" %>
<table class="table table-striped">
    <thead>
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Phone Number</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<User> users = new UserModel().getUsers();
        for (User user : users) {
            try {
    %>
    <tr>
        <td><%= user.getFirst_name() + " " + user.getLast_name() %>
        </td>
        <td><%= user.getEmail() %>
        </td>
        <td><%= user.getPhone() %>
        </td>
    </tr>
    <%
            } catch (Exception e) {
                e.printStackTrace();
                continue;
            }
        }
    %>
    </tbody>
</table>