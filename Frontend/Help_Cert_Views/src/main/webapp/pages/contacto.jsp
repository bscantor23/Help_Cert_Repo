<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <jsp:include page="componentes/head.jsp" />

  <body class="res-body">
    <jsp:include page="componentes/nav.jsp" />

    <div class="container-fluid homepage res-homepage res-contacto p-0">
      <section class="about-section pb-5">
        <div class="container mb-5 pt-3">
          <div class="row pt-5 mx-5 gx-5 gy-5 mb-3 d-flex justify-content-center">
            <div class="col-lg-4 d-flex justify-content-center">
              <img class="logo-servicios" src="img/others/contacto-header.png" alt="">
            </div>
          </div>
          <div class="row gy-5 pt-5 d-flex justify-content-center">
            <div class="card card-style bg-transparent-color h-100 py-1 container-contacto ">
              <div class="card-body card-contact">
                <form method="POST">
                  <div class="mb-3 row">
                    <div class="input-group">
                      <span class="input-group-text input-span-style"><i class="fa fa-comment"
                          aria-hidden="true"></i></span>
                      <input type="text" name="asunto" class="form-control form-control-lg input-style-1"
                        placeholder="Asunto...">
                    </div>
                  </div>
                  <hr>
                  <div class="mb-3 row gy-4">
                    <div class="col-md">
                      <div class="input-group">
                        <span class="input-group-text input-span-style"><i class="fa fa-user"
                            aria-hidden="true"></i></span>
                        <input type="text" name="nombre" class="form-control form-control-lg input-style-1"
                          placeholder="Nombre">
                      </div>
                    </div>
                    <div class="col-md">
                      <div class="input-group">
                        <span class="input-group-text input-span-style"><i class="fa fa-phone "
                            aria-hidden="true"></i></span>
                        <input type="number" name="telefono" class="form-control form-control-lg input-style-1"
                          placeholder="Teléfono">
                      </div>
                    </div>
                  </div>
                  <div class="mb-3 row gy-4"">
                    <div class="col-md">
                    <div class="input-group">
                      <span class="input-group-text input-span-style"><i class="fa fa-envelope"
                          aria-hidden="true"></i></span>
                      <input type="email" name="email" class="form-control form-control-lg input-style-1"
                        placeholder="Email">
                    </div>
                  </div>
                  <div class="col-md">
                    <div class="input-group">
                      <span class="input-group-text input-span-style"><i class="fa fa-building"
                          aria-hidden="true"></i></span>
                      <input type="text" name="empresa" class="form-control form-control-lg input-style-1"
                        placeholder="Empresa">
                    </div>
                  </div>
              </div>
              <hr>
              <div class="mt-3 row d-flex justify-content-center">
                <textarea class="form-control form-control-lg input-style-2" type="text" name="mensaje"
                  placeholder="Mensaje..."></textarea>
                <button type="submit" class="btn bg-primary-color button-style-2 text-light fs-3">Enviar</button>
              </div>
              </form>
            </div>
          </div>
        </div>
      </section>
    </div>
    <jsp:include page="componentes/footer.jsp" />

  </body>

  </html>