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
                <h4 class="text-brown-muted float-left">Otros Si</h4>
            </a>
        </div>
    </div>

    <div class="titulo">
        <div class="texto-titulo">
            <h2>CREACIÓN DE OTROS SI</h2>
        </div>
    </div>
    <div class="otros-container">
        <div class="formulario-otros">
            <label>Número de Contrato</label>
            <input type="text" class="form-control my-2" placeholder="Example input">
            <label>Número de Cédula</label>
            <input type="text" class="form-control my-2" placeholder="Example input">
            <div class="boton-otros-si">
                <button type="button" class="btn btn-success">Buscar<img src="img/buscar.png" alt=""></alt></button>
            </div>
        </div>
        <div class="linea-container-otros">
            <div class="linea2">
                <img style="height:350px;" src="img/others/vertical-line.png">
            </div>
        </div>
        <div class="certificado-container-otros">
            <div class="linea2">
                <img style="width:250px;" src="img/others/contrato-1-img.png" alt="">
            </div>
        </div>

    </div>
</div>

<jsp:include page="../componentes/footer.jsp"/>