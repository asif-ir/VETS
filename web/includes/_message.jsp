<%
    if (request.getAttribute("message")!=null) {
%>
<div class="alert alert-info">
    <div class="container">
        <p><%= request.getAttribute("message").toString() %></p>
    </div>
</div>
<%
    }
%>
