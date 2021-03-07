<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String methodAtt = (String) request.getAttribute("method");
    String methodParam = (String) request.getParameter("method");

    if (methodAtt != null || methodParam != null) {
%>            
<jsp:include page="../5_alerts/alerts.jsp" />
<% }%>

<footer class="container-fluid footer-container">
    <img class="icon-footer" src="img/icons/icon-footer.png" alt="">
    <h2 class="text-white mt-4">HELP CERT</h2>
    <hr class="hr-footer">
    <p class="text-white mt-2">© Copyright 2020 - Todos los Derechos Reservados</p>
</footer>
<script src="app/js/dashboard.js"></script>
<script src="js/alerts.js"></script>

</body>

</html>