<%@page contentType="text/html" pageEncoding="UTF-8" %>
  <jsp:include page="componentes/head.jsp" />

  <body class="res-login">
    <jsp:include page="componentes/nav.jsp" />

    <div class="container-fluid homepage p-0">
      <section class="home-section d-flex align-items-center justify-content-center">
        <div class="col d-flex flex-column align-items-center mt-5">
          <div class="login-container d-flex flex-column align-items-center bg-transparent-color rounded-circle">
            <img class="icon-login mb-4" src="img/icons/user-icon.png" alt="">
            <form method="POST" action="home">
              <div class="mb-3 row d-flex justify-content-center">
                <div class="input-group input-login">
                  <span class="input-group-text input-span-style"><i class="fa fa-user" aria-hidden="true"></i></span>
                  <input id="email" type="email" name="correo" class="form-control form-control-lg input-style-1"
                    placeholder="email" autocomplete="off">
                </div>
              </div>
              <div class="mb-3 row d-flex justify-content-center">
                <div class="input-group input-login">
                  <span class="input-group-text input-span-style"><i class="fa fa-lock" aria-hidden="true"></i></span>
                  <input type="password" name="clave" class="form-control form-control-lg input-style-1"
                    placeholder="password">
                </div>
              </div>
              <div class="d-flex justify-content-center">
                <a class="text-align-center link-forgotten" href="#">¿Olvidaste tu Contraseña?</a>
              </div>
              <div class="container-button-home">
                <button type="submit" class="login-button">Login</button>
              </div>
            </form>
          </div>
        </div>
      </section>
    </div>
    <jsp:include page="componentes/footer.jsp" />

  </body>

  </html>