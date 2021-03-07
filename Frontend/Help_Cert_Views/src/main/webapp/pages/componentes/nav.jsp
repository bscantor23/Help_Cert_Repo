<%@page contentType="text/html" pageEncoding="UTF-8" %>

  <nav class="navbar navbar-dark navbar-expand-md bg-primary-color px-2" role="navigation">
    <div class="container-fluid">
      <a class="navbar-brand mx-2" href="homepage"><img class="navbar-img" src="img/logos/sena-logo.png"
          alt="logo-Sena"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#Dropdown"
        aria-controls="Dropdown" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="Dropdown">
        <ul class="navbar-nav pl-3 w-100 d-flex justify-content-end">
          <hr class="line-style-1">
          <li class="nav-item px-3 py-2">
            <a class="nav-link h5 m-0" aria-current="page" href="sitepages?action=inicio"><i
                class="fas fa-hotel sp-1 text-center"></i>
              INICIO</a>
          </li>
          <li class="nav-item px-3 py-2">
            <a class="nav-link h5 m-0" href="sitepages?action=acercade"><i class="fas fa-hand-point-up sp-1 text-center"></i>
              ACERCA DE</a>
          </li>
          <li class="nav-item px-3 py-2 ">
            <a class="nav-link h5 m-0" href="sitepages?action=servicios"><i class="fas fa-cog sp-1 text-center"></i>
              SERVICIOS</a>
          </li>
          <li class="nav-item px-3 py-2">
            <a class="nav-link h5 m-0" href="sitepages?action=contacto"><i class="fas fa-id-card-alt sp-1 text-center"></i>
              CONTACTO</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>