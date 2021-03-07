<%@page import="models.TipoDocumento"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-9 principal-content pl-5">
    <h5 class="text-brown-muted" style="text-transform: capitalize;">${title}</h5>
    <hr class="w-80">
    <form action="${action}" method="${method}">
        <input type="text" style="display: none;" name="rol" value=${typeUser}>
        <div class="row">
            <div class="col">
                <div class="input-group mb-2 px-2">
                    <span class="input-group-text rounded-0" placeholder=""><i class='bx bxs-user mr-1'></i>Nombres </span>
                    <input type="text" aria-label="nombre" name="nombres" placeholder="" class="form-control" value="${userInfo.nombres}" required>
                </div>
            </div>
            <div class="col">
                <div class="input-group mb-2 px-2">
                    <span class="input-group-text rounded-0"><i class='bx bxs-user mr-1'></i>Apellidos </span>
                    <input type="text" aria-label="apellido" name="apellidos" class="form-control" value="${userInfo.apellidos}" required>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="input-group mb-2 px-2">
                    <span class="input-group-text rounded-0"><i class='bx bx-credit-card-front mr-1'></i>Dirección</span>
                    <input type="text" aria-label="Direccion" name="direccion" class="form-control" value="${userInfo.direccion}" required>
                </div>
            </div>
            <div class="col">
                <div class="input-group mb-2 px-2">
                    <span class="input-group-text rounded-0"><i class='bx bx-dialpad-alt mr-1'></i>Teléfono</span>
                    <input id="telefonoInput" type="number" aria-label="Telefono" name="telefono" class="form-control" value="${userInfo.telefono}" required>
                </div>
            </div>
        </div>
        <div class="input-group has-validation mb-2 px-2">
            <span class="input-group-text rounded-0"><i class='bx bx-at mr-1'></i>Correo Electrónico</span>
            <input type="email" aria-label="email" name="correo" class="form-control" value="${userInfo.correo}" required>
        </div>
        <div class="row">
            <div class="col-auto ml-2">
                <select class="input-group-text" aria-label="genero" name="genero" required>
                    <option selected>Género</option>
                    <option value="F">Femenino</option>
                    <option value="M">Masculino</option>
                    <option value="O">Otro</option>
                </select>
            </div>
            <div class="col">
                <div class="input-group mb-2 px-2">
                    <select class="input-group-text rounded-0" name="tipo_documento" required>
                        <c:forEach var="tipo_doc" items="${tipo_docs}">
                            <option value="${tipo_doc.idTipoDocumento}">${tipo_doc.abreviatura}</option>
                        </c:forEach>
                    </select>
                    <span class="input-group-text rounded-0"><i class='bx bxs-id-card mr-1'></i>Número Documento</span>
                    <input type="number" id="docInput" aria-label="numero_documento" name="numero_documento" value="${userInfo.numeroDocumento}" class="form-control" required>
                </div>
            </div>
        </div>
        <div class="input-group mb-2 px-2">
            <span class="input-group-text rounded-0"><i class='bx bxs-user-detail mr-1'></i>Cargo</span>
            <input type="text" aria-label="Cargo" name="cargo" value="${userInfo.cargo}" class="form-control">
        </div>
        <div class="input-group mb-2 px-2">
            <span class="input-group-text rounded-0"><i class='bx bxs-been-here mr-1'></i>Ciudad</span>
            <input type="text" aria-label="Ciudad" name="ciudad" value="${userInfo.ciudad}" class="form-control">
        </div>
        <div class="content-bottom ">
            <button class="btn btn-primary w-auto mt-4" type="submit"><i class='bx bx-save mr-1 '></i>Guardar</button>
        </div>
    </form>
    <div class="content-bottom">
        <hr class="w-50">
        <img class="logo-content" src="img/icons/HC.png" alt="">
    </div>
</div>