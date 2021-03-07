<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:include page="modulos/componentes/header.jsp" />
<jsp:include page="../componentes/nav.jsp" />

<div id="menu-aside" class="menu-aside-container aside-menu">
    <jsp:include page="../componentes/panel_${componente}.jsp"/>
</div>
<div class="container-fluid content-container-u bg-white">
    <div class="rutas">
        <div class="texto-rutas">
            <a class="float-left" href="home">
                <h4 class="text-brown-muted">Tabla de Información</h4>
            </a>
            <h4 class="text-brown-muted float-left px-2">-></h4>
            <a href="#">
                <h4 class="text-brown-muted float-left">Usuarios</h4>
            </a>
        </div>
    </div>
    <div class="table-usuarios">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellidos</th>
                    <th scope="col">N.Documento</th>
                    <th scope="col">Correo</th>
                    <th scope="col">Teléfono</th>
                    <th scope="col">Rol</th>
                    <th>CRUD</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user" varStatus="status">
                    <tr>
                        <td>${user.idUsuario}</td>
                        <td>${user.nombres}</td>
                        <td>${user.apellidos}</td>
                        <td>${user.numeroDocumento}</td>
                        <td>${user.correo}</td>
                        <td>${user.telefono}</td>

                        <td>${user.objRolUsuario.nombreRol}</td>
                        <td>
                            <a href="#"><i class="fa fa-eye icono_ver" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-pencil icono_edit" aria-hidden="true"></i></a> 
                            <a href="usuarios?action=eliminarusuario&id=${user.idUsuario}"><i class="fa fa-trash icono_delete" aria-hidden="true"></i></a>
                        </td>
                    </tr>
                </c:forEach>     
            </tbody>
        </table>
        <div class="container-boton-crear">
            <a href="usuarios?action=crearusuario" class="btn btn-success boton-crear">Crear</alt></a>
        </div>
    </div>
</div>

<jsp:include page="../componentes/footer.jsp"/>