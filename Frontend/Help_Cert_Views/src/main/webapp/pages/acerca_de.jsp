<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <jsp:include page="componentes/head.jsp" />

  <body class="res-body">
    <jsp:include page="componentes/nav.jsp" />

    <div class="container-fluid homepage res-homepage p-0">
      <section class="about-section pb-5">
        <div class="container mb-5 pt-3">
          <div class="row pt-5 mx-5 gx-5 gy-5">
            <div class="col-lg-4 d-flex justify-content-center">
              <img class="logo-acerca-de" src="img/others/acercaDe-header.png" alt="">
            </div>
            <div class="col-lg-8 d-flex align-items-center justify-content-center subtitle-about">
              <p class="fs-subtitle fw-bold">OFRECEMOS LA MEJOR CALIDAD Y SERVICIO</p>
            </div>
          </div>
        </div>
        <div class="container d-flex align-self-center">
          <div class="row gx-5 gy-5 h-auto mx-3">
            <div class="col-lg">
              <div class="card card-style bg-transparent-color h-100">
                <div class="card-header bg-secundary-color py-3">
                  <h2 class="card-title text-center text-light">Visión</h2>
                </div>
                <div class="card-body d-flex align-items-center px-4 py-5">
                  <p class="card-text text-center">Ser la empresa preferida de comercios
                    y entidades para el desarrollo
                    de sistemas y aplicaciones en Colombia.</p>
                </div>
              </div>
            </div>
            <div class="col-lg">
              <div class="card card-style bg-transparent-color h-100">
                <div class="card-header bg-secundary-color py-3">
                  <h2 class="card-title text-center text-light">Misión</h2>
                </div>
                <div class="card-body d-flex align-items-center px-4 py-5">
                  <p class="card-text text-center  ">Servir como solución en el desarrollo de la industria de sistemas
                    informáticos.</p>
                </div>
              </div>
            </div>
            <div class="col-lg">
              <div class="card card-style bg-transparent-color h-100">
                <div class="card-header bg-secundary-color py-3">
                  <h2 class="card-title text-center text-light">Objetivo</h2>
                </div>
                <div class="card-body d-flex align-items-center px-4 py-5">
                  <p class="card-text text-center ">Diseñar un sistema de información que optimice los procesos de
                    certificaciones
                    laborales flexibles que permitan a futuro su implementación en otros
                    procesos.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <jsp:include page="componentes/footer.jsp" />

  </body>

  </html>