<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../componentes/header.jsp" />
<jsp:include page="../componentes/nav.jsp" />

<div id="menu-aside" class="menu-aside-container aside-menu">
    <jsp:include page="../componentes/panel_team.jsp"/>
</div>
<div class="container-fluid content-container-1 bg-white">
    <div class="rutas">
        <div class="texto-rutas">
            <a class="float-left" href="home">
                <h4 class="text-brown-muted">Contratos</h4>
            </a>
            <h4 class="text-brown-muted float-left px-2">-></h4>
            <a href="contratos?action=escaneo">
                <h4 class="text-brown-muted float-left">Escanear Archivos</h4>
            </a>
            <h4 class="text-brown-muted float-left px-2">-></h4>
            <a href="#">
                <h4 class="text-brown-muted float-left">Crear Contrato</h4>
            </a>
        </div>
    </div>
    <div class="titulo">
        <div class="texto-titulo">
            <h2>CREACIÓN DE CONTRATO</h2>
        </div>
    </div>
    <div class="cr">
        <div class="archivo2">
            <div class="crear-form-container">
                <label>Nombres y apellidos</label>
                <input type="text" class="form-control" placeholder="Example input">
                <label>Numero de documento</label>
                <input type="text" class="form-control" placeholder="Example input">
                <label>Funcion</label>
                <input type="text" class="form-control" placeholder="Example input">
                <label>Cargo</label>
                <input type="text" class="form-control" placeholder="Example input">
                <label>Horario de trabajo</label>
                <input type="text" class="form-control" placeholder="Example input">
                <label>Sede</label>
                <input type="text" class="form-control" placeholder="Example input">
                <label>Salario</label>
                <input type="text" class="form-control" placeholder="Example input">
            </div>
            <div class="boton-archivo">
                <a href="escaneo.html" class="btn btn-success">Guardar</alt></a>
            </div>
        </div>
        <div class="botones">
            <div class="linea2">
                <img style="height:350px;" src="app/img/others/vertical-line.png">
            </div>
        </div>
        <div class="computador">
            <div class="linea2">
                <img style="width:250px;" src="app/img/others/contrato-1-img.png" alt="">
            </div>
        </div>

    </div>
</div>

<jsp:include page="../componentes/footer.jsp"/>