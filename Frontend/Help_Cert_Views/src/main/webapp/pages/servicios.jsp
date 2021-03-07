<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <jsp:include page="componentes/head.jsp" />

  <body class="res-body">
    <jsp:include page="componentes/nav.jsp" />

    <div class="container-fluid homepage res-homepage p-0">
      <section class="about-section pb-5">
        <div class="container mb-5 pt-3">
          <div class="row pt-5 mx-5 gx-5 gy-5 mb-3">
            <div class="col-lg-4 d-flex justify-content-center">
              <img class="logo-servicios" src="img/others/servicios-header.png" alt="">
            </div>
          </div>
          <div class="row gy-5 pt-5 d-flex container-el-services">
            <div class="col-lg-7 d-flex justify-content-center order-2 order-lg-1">
              <div class="card card-style bg-transparent-color h-100 card-services py-3">
                <div class="card-body d-flex align-items-center px-4 py-5">
                  <p class="card-text text-center">Trabajamos en desarrollo de aplicaciones a medida de las necesidades
                    de nuestros clientes.
                    Seguimos en todos los casos una metodología de desarrollo, aplicando los procedimientos y
                    controles de nuestro sistema de gestión de la calidad.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-5 d-flex justify-content-center align-items-center order-1 order-lg-2">
              <img class="logo-cert" src="img/logos/logo-HC.png" alt="">
            </div>
          </div>
        </div>
      </section>
    </div>
    <jsp:include page="componentes/footer.jsp" />

  </body>

  </html>