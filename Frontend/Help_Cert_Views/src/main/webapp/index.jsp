<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <jsp:include page="pages/componentes/head.jsp" />

  <body>
    <jsp:include page="pages/componentes/nav.jsp" />

    <div class="container-fluid homepage p-0">
      <section class="home-section h-100 d-flex align-items-center justify-content-center">
        <div class="col d-flex flex-column align-items-center">
          <h1 class="fw-bold text-center d-block text-light m-0 principal-title">HELP_CERT</h1>
          <hr class="line-style-2">
          <div class="pb-4 w-75">
            <h3 class="fw-bold text-center py-4 d-block m-0 color-1 principal-subtitle">Bienvenido a tu plataforma de
              Certificados Digitales
            </h3>
          </div>
          <a class="button-style-1" href="sitepages?action=inicio">INICIO DE SESION</a>
        </div>
      </section>
    </div>
    <jsp:include page="pages/componentes/footer.jsp" />

  </body>

  </html>