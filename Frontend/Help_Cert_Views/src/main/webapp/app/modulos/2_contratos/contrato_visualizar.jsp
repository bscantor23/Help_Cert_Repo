<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../componentes/header.jsp" />
<jsp:include page="../componentes/nav.jsp" />

<div id="menu-aside" class="menu-aside-container aside-menu">
    <jsp:include page="../componentes/panel_team.jsp"/>
</div>
<div class="container-fluid content-container2 bg-white">
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
                <h4 class="text-brown-muted float-left">Visualizar Contratos</h4>
            </a>
        </div>
    </div>
    <div class="titulo">
        <div class="texto-titulo">
            <h2>CONTRATOS ACTUALES</h2>
        </div>
    </div>
    <div class="busqueda">
        <div class="busqueda-cedula">
            <label>Buscar por cédula</label>
            <div>
                <input type="text" placeholder="Example input">
                <button type="button" class="btn btn-success"><img src="img/icons/buscar-icon.png" alt=""></button>
            </div>
        </div>
        <div class="busqueda-fecha">
            <label>Buschar por fecha</label>
            <div>
                <input type="date">
                <button type="button" class="btn btn-success"><img src="img/icons/buscar-icon.png" alt=""></button>
            </div>
        </div>
    </div>
</div>


<jsp:include page="../componentes/footer.jsp"/>