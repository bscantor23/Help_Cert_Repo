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
            <a href="#">
                <h4 class="text-brown-muted float-left">Escanear Archivos</h4>
            </a>
        </div>
    </div>
    <div class="titulo">
            <div class="texto-titulo">
                <h2>ESCANEA TU CONTRATO</h2>
            </div>
        </div>
        <div class="items">
            <div class="archivo">
                <div class="imagen-archivo">
                    <a href="contratos?action=escaneo2"><img class="grupo179" src="img/others/contrato-scan.png" alt=""></a>
                </div>
                <div class="boton-archivo">

                </div>
            </div>
            <div class="botones">
                <div class="crear">
                    <a class="btn btn-default circle float-left"
                        style="font-size:15px; border-radius:80%">
                        <img src="img/icons/pencil-icon.png">
                    </a>
                    <a href="contratos?action=crearcontrato">
                        <h5 class="crear">CREAR</h5>
                    </a>
                </div>
                <div class="agregar">
                    <a class="btn btn-default circle float-left"
                        style="font-size:15px; border-radius:80%">
                        <img src="img/icons/add-icon.png">
                    </a>
                    <a href="contratos?action=otrosi">
                        <h5 class="crear">AGREGAR (OTROSI)</h5>
                    </a>
                </div>
            </div>
            <div class="computador">
                <div class="imagen-computador">
                    <img class="grupo176" src="img/others/computer-img.png" alt="">
                </div>
            </div>

        </div>
    </div>


<jsp:include page="../componentes/footer.jsp"/>