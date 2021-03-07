<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%
    String method = (String) request.getAttribute("method");
    if (method != null) {
%>            
<jsp:include page="../../app/modulos/5_alerts/alerts.jsp" />
<% }%>

<footer class="bg-primary-color py-4 d-flex flex-column align-items-center">
    <img src="img/icons/HC_white.png" alt="">
    <hr class="line-style-3">
    <p class="text-center text-light fs-5 w-75 m-0">© 2021 Help_Cert Todos los derechos reservados</p>
</footer>
<script src="js/alerts.js"></script>