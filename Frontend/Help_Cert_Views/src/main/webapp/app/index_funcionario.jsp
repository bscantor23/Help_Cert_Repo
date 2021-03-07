<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="modulos/componentes/header.jsp" />
<jsp:include page="modulos/componentes/nav.jsp" />

<div class="container-fluid content-container bg-white">
    <div class="row">
        <div class="col-3 aside-menu">
            <jsp:include page="modulos/componentes/panel_funcionario.jsp" />
        </div>
        <jsp:include page="modulos/componentes/dashboard.jsp" />
    </div>
</div>

<jsp:include page="modulos/componentes/footer.jsp" />
