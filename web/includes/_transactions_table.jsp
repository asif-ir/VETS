<%@ page import="entities.Transaction" %>
<%@ page import="models.TransactionModel" %>
<%@ page import="java.util.List" %>
<%@ page import="models.UserModel" %>
<table class="table table-striped">
    <thead>
    <tr>
        <th>Buyer</th>
        <th>Seller</th>
        <th>Transaction Amount</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Transaction> transactions = new TransactionModel().getTransaction();
        for (Transaction transaction : transactions) {
            try {
    %>
    <tr>
        <td><%= new UserModel().getUser(transaction.getBuyer_id()).getFirst_name() + " " + new UserModel().getUser(transaction.getBuyer_id()).getLast_name() %>
        </td>
        <td><%= new UserModel().getUser(transaction.getSeller_id()).getFirst_name() + new UserModel().getUser(transaction.getSeller_id()).getLast_name() %>
        </td>
        <td><%= transaction.getPrice() %>
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