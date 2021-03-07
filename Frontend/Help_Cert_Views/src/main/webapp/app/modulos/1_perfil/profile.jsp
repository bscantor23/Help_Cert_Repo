<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../componentes/header.jsp" />
<jsp:include page="../componentes/nav.jsp" />

<div class="container-fluid content-container bg-white">
    <div class="row">
        <div class="col-3 aside-menu">
            <jsp:include page="../componentes/panel_${componente}.jsp" />
        </div>
        <div class="col-9 principal-content pl-5">
            <h5 class="text-brown-muted">Actualización De Información</h5>
            <hr class="w-50">
            <br>
            <form action="actualizarperfil" method="post">
                <div class="actualizacion-content">
                    <div class="formulario-actualizacion-content">
                        <input type="hidden" name="id" value="${usuario.idUsuario}">
                        <div class="edit-option-container">
                            <h5 class="text-muted"><b>Nombres:</b> ${usuario.nombres} ${usuario.apellidos}</h5>
                            <hr class="w-50">
                        </div>
                        <div class="edit-option-container">
                            <h5 class="mr-3 text-muted"><b>${usuario.objTipoDocumento.abreviatura}:</b> ${usuario.numeroDocumento}  Ciudad:</h5><input class="input-perfil" type="text" name="ciudad" placeholder="${usuario.ciudad}" value="${usuario.ciudad}" required>
                            <hr class="w-50">
                        </div>
                        <div class="edit-option-container">
                            <h5 class="mr-3 text-muted"><b>Correo:</b> </h5><input class="input-perfil" type="email" name="correo" placeholder="${usuario.correo}" value="${usuario.correo}" required>
                            <hr class="w-50">
                        </div>
                        <div class="edit-option-container">
                            <h5 class="mr-3 text-muted"><b>Teléfono:</b> </h5><input class="input-perfil" type="text" name="telefono" placeholder="${usuario.telefono}" value="${usuario.telefono}" required>
                            <hr class="w-50">
                        </div>
                        <div class="edit-option-container">
                            <h5 class="mr-3 text-muted"><b>Dirección:</b> </h5><input class="input-perfil" style="width:300px" type="text" name="direccion" placeholder="${usuario.direccion}" value="${usuario.direccion}" required>
                            <hr class="w-50">
                        </div>
                        <div class="edit-option-container">
                            <h5 class="mr-3 text-muted"><b>Institución:</b> SENA</h5>
                            <hr class="w-50">
                        </div>
                    </div> 
                    <div class="foto-perfil-content">
                        <i class="fa fa-user-circle profile-img" aria-hidden="true"></i>
                    </div>
                </div>
                <div class="boton-edit-container">
                    <button class="boton" type="submit">Guardar</button>
                </div>
            </form>
            <div class="content-bottom">
                <hr class="w-50 ">
                <img class="logo-content" src="img/icons/HC.png" alt="">
            </div>
        </div>
    </div>
</div>

<jsp:include page="../componentes/footer.jsp" />
