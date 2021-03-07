<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-9 principal-content pl-5">
    <h5 class="text-brown-muted" style="text-transform:capitalize">Tabla de Información -> ${typeUsers}</h5>
    <hr class="w-80">
    <table class="table table-striped table-hover table-scroll">
        <thead class="thead-orange">
            <tr class="">
                <th>ID</th>
                <th>Nombres</th>
                <th>Tipo Doc</th>
                <th>Número Doc</th>
                <th>Correo</th>
                <th>Genero</th>
                <th>Contacto</th>
                <th>Cargo</th>
                <th>Estado</th>
                <th><i class='bx bxs-edit mx-3'></i><i class='bx bxs-toggle-right' style="margin-left:13px"></i></th>
            </tr>
        </thead>
        <tbody>
            <tr>
        <c:forEach var="user" items="${users}">
            <th>${user.idUsuario}</th>
            <td>${user.nombres} ${user.apellidos}</td>
            <td>${user.objTipoDocumento.abreviatura}</td>
            <td>${user.numeroDocumento}</td>
            <td>${user.correo}</td>
            <td>${user.genero}</td>
            <td>${user.telefono}</td>
            <td>${user.cargo}</td>
            <td>${user.estadoLetters}</td>
            <td class="d-flex">
                <a href="actualizarusuario?idUser=${user.idUsuario}" class="mx-2 btn_crud"><i class='bx bxs-edit'></i></a>
                <form action="habilitarusuario?idUser=${user.idUsuario}&estado=${user.estado}" method="POST">
                    <button class="mx-2 btn_crud border-0 color-icon-${user.estado}"><i class='bx bxs-toggle-${user.estadoIcon}' ></i></button>
                </form>
            </td>
            <tr>
        </c:forEach>

        </tbody>
    </table>
</div>
