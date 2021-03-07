<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="../componentes/header.jsp" />
<jsp:include page="../componentes/nav.jsp" />

<div class="container-fluid content-container bg-white">
    <div class="row">
        <div class="col-3 aside-menu">
            <jsp:include page="../componentes/panel_${componente}.jsp" />
        </div>
        <jsp:include page="../componentes/tabla_informacion.jsp" />
    </div>
</div>


<jsp:include page="../componentes/footer.jsp" />