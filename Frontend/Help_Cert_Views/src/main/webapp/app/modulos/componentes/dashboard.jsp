

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="col-9 principal-content pl-5">
    <h5 class="text-brown-muted">Dashboard</h5>
    <hr class="w-50">
    <div class="info-items-container">
        <div class="info-item-1">
            <div class="header-item">
                <hr class="line-item">
            </div>
            <div class="content-item">
                <h1 id="cant-certificados" class="font-weight-bold counter" data-target="${homeinfo.certificados}">0</h1>
                <h4>Certificados</h4>
            </div>
        </div>
        <div class="info-item-2">
            <div class="header-item">
                <hr class="line-item">
            </div>
            <div class="content-item">
                <h1 id="cant-funcionarios" class="font-weight-bold counter" data-target="${homeinfo.funcionarios}">0</h1>
                <h4>Funcionarios</h4>
            </div>
        </div>
        <div class="info-item-3">
            <div class="header-item">
                <hr class="line-item">
            </div>
            <div class="content-item">
                <h1 id="cant-solicitudes" class="font-weight-bold counter" data-target="${homeinfo.contratos}">0</h1>
                <h4>Contratos</h4>
            </div>
        </div>
    </div>
    <div class="content-bottom">
        <hr class="w-50">
        <img class="logo-content" src="img/icons/HC.png" alt="">
    </div>
</div>