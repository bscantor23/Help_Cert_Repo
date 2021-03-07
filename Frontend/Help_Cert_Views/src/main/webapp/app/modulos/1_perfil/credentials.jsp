<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../componentes/header.jsp" />
<jsp:include page="../componentes/nav.jsp" />

<div class="container-fluid content-container bg-white">
    <div class="row">
        <div class="col-3 aside-menu">
            <jsp:include page="../componentes/panel_${componente}.jsp" />
        </div>
        <div class="col-9 principal-content pl-5">
            <h5 class="text-brown-muted">Creedenciales del Perfil</h5>
            <hr class="w-50">
            <br>
            <div class="container-clave">
                <div class="edit-option-container">
                    <h5>Anterior</h5>
                </div>
                <form action="actualizarclave" method="post">
                    <input type="hidden" name="id" value="${usuario.idUsuario}" required>
                    <div class="py-1 mb-2">
                        <input type="password" name="claveReg" placeholder="*************">
                    </div>
                    <div class="edit-option-container">
                        <h5>Nueva</h5>
                    </div>
                    <div class="py-1 mb-3">
                        <input type="password" name="claveNue" placeholder="*************">
                    </div>
                    <div class="boton-clave-container">
                        <button type="submit" class="boton">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../componentes/footer.jsp" />
