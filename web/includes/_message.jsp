<%
    if (request.getAttribute("message")!=null) {
%>
<div class="alert alert-success">
    <div class="container">
        <%= request.getAttribute("message").toString() %>
    </div>
</div>
<%
    }
%>
