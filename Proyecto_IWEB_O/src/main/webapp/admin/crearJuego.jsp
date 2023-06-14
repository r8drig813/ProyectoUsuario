<!--NO olvidar los enlaces-->
<%@ page import="com.example.proyecto_iweb.models.beans.Juegos" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>JA-VAGOS</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <link rel="icon" href="img/sistema/pestania.png">

  <!-- Estilos CSS -->
  <!--Importando estilos CSS-->
  <link rel="stylesheet" href="estilos/usuario/filtros.css">
  <link rel="stylesheet" href="estilos/usuario/usuario.css">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link
          href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!--Estilos para pie de paginad de listas-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

</head>
<body>
<!-- ======= Cabecera ======= -->
<header id="header" class="header fixed-top d-flex align-items-center bg-danger">

  <div class="d-flex align-items-center justify-content-between">
    <a href="#" class="logo d-flex align-items-center">
      <img src="../img/sistema/logoUsuario.png" alt="">
      <span class="d-none d-lg-block text-light">JA-VAGOS</span>
    </a>
  </div>

  <div class="search-bar mt-3">
    <form class="search-form d-flex align-items-center" method="POST" action="#">
      <input type="text" name="query" placeholder="Search" title="Enter search keyword">
      <button type="submit" title="Search"><i class="bi bi-search"></i></button>
    </form>
  </div>

  <nav class="header-nav ms-auto">
    <ul class="d-flex align-items-center">

      <!--BUSCADOR -->
      <li class="nav-item d-block d-lg-none">
        <a class="nav-link nav-icon search-bar-toggle " href="#">
          <i class="bi bi-search"></i>
        </a>
      </li><!-- End Search Icon-->

      <!-- ICONO DE TIENDA Y NOTIFICACIÓN-->


      <li class="nav-item dropdown">

        <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
          <i class="bi bi-chat-left-text text-light"></i>
          <span class="badge bg-success badge-number">2</span>
        </a><!-- End Messages Icon -->

        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
          <li class="dropdown-header">
            Tienes 2 mensajes nuevos ! ! !
            <!--
            <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">Ver todo</span></a>
            -->
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>

          <li class="message-item">
            <a href="#">
              <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
              <div>
                <h4>Maria Hudson</h4>
                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                <p>4 hrs. ago</p>
              </div>
            </a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>

          <li class="message-item">
            <a href="#">
              <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
              <div>
                <h4>Anna Nelson</h4>
                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                <p>6 hrs. ago</p>
              </div>
            </a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>

          <li>
            <hr class="dropdown-divider">
          </li>

          <li class="dropdown-footer">
            <a href="notificacionesAdminOficial.html">Ver todos los mensajes</a>
          </li>

        </ul><!-- End Messages Dropdown Items -->

      </li><!-- End Messages Nav -->










      <li class="nav-item dropdown pe-3">

        <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
          <img src="../img/administrador/admin1.png" alt="Profile" class="rounded-circle">
          <span class="d-none d-md-block dropdown-toggle ps-2 text-light">B. Chavez</span>
        </a>

        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
          <li class="dropdown-header">
            <h6>B. Chavez</h6>
            <span>Administrador</span>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>

          <li>
            <a class="dropdown-item d-flex align-items-center" href="miPerfilAdminOficial.html">
              <i class="bi bi-person"></i>
              <span>Mi Perfil</span>
            </a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>

          <li>
            <a class="dropdown-item d-flex align-items-center" href="miPerfilAdminOficial.html">
              <i class="bi bi-gear"></i>
              <span>Configuración</span>
            </a>
          </li>
          <li>
            <hr class="dropdown-divider">
          </li>


          <li>
            <a class="dropdown-item d-flex align-items-center" href="cerrarLoguinOficial.html">
              <i class="bi bi-box-arrow-right"></i>
              <span>Sign Out</span>
            </a>
          </li>

        </ul><!-- End Profile Dropdown Items -->
      </li><!-- End Profile Nav -->

    </ul>
  </nav><!-- End Icons Navigation -->

</header>
<!-- End Cabecera -->

<!--------------------------------------------------------------------------------------------------------------------->

<!-- ======= Barra Lateral ======= -->
<aside id="sidebar" class="sidebar">

  <ul class="sidebar-nav" id="sidebar-nav">

    <li class="nav-item">
      <a class="nav-link collapsed" href="<%=request.getContextPath()%>/AdminJuegoServlet">
        <i class="bi bi-grid"></i>
        <span>Disponibles</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="<%=request.getContextPath()%>/AdminServlet">
        <i class="bi bi-arrow-up-square"></i>
        <span>Reservas y juegos comprados</span>
      </a>
    </li>



    <li class="nav-item">
      <a class="nav-link text-danger" href="#">
        <i class="bi bi-exclamation-square text-danger"></i>
        <span>Ofertas</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-bag"></i><span>Juegos vendidos</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        <li>
          <a href="juegosNuevosAdminOficial.html">
            <i class="bi bi-circle"></i><span>Nuevo</span>
          </a>
        </li>
        <li>
          <a href="juegosExistentesAdminOficial.html">
            <i class="bi bi-circle"></i><span>Existente</span>
          </a>
        </li>
        <li>
          <a href="juegosColaAdminOficial.html">
            <i class="bi bi-circle"></i><span>Cola</span>
          </a>
        </li>
      </ul>
    </li>

  </ul>


</aside>
<!-- ======= End Barra Lateral ======= -->

<!--------------------------------------------------------------------------------------------------------------------->


<main id="main" class="main">

  <div class="pagetitle">
    <h1>Crear juego</h1>
  </div>

  <div class="container">
    <form method="POST" action="<%=request.getContextPath()%>/AdminJuegoServlet">

      <div class="mb-3">
        <label for="idJuegos">Juego ID</label>
        <p>No permitido de 100-120</p>
        <input type="text" class="form-control" name="idJuegos" id="idJuegos">
      </div>

      <div class="mb-3">
        <label for="nombre">Nombre</label>
        <input type="text" class="form-control" name="nombre" id="nombre">
      </div>

      <div class="mb-3">
        <label for="descripcion">Descripción</label>
        <input type="text" class="form-control" name="descripcion" id="descripcion">
      </div>

      <div class="mb-3">
        <label for="precio">Precio</label>
        <input type="text" class="form-control" name="precio" id="precio">
      </div>

      <div class="mb-3">
        <label for="descuento">Descuento</label>
        <input type="text" class="form-control" name="descuento" id="descuento">
      </div>

      <div class="mb-3">
        <label for="stock">Stock</label>
        <input type="text" class="form-control" name="stock" id="stock">
      </div>



      <div class="input-group mb-3">
        <label for="precio">Categoría</label>
        <div class="col-12">
          <select class="form-select" aria-label="Combo Box">
            <option selected></option>
            <option value="1">Aventura</option>
            <option value="2">Acción</option>
            <option value="3">Deporte</option>
          </select>
        </div>
      </div>

      <div class="input-group mb-3">
        <label for="precio">Consola</label>
        <div class="col-12">
          <select class="form-select" aria-label="Combo Box">
            <option selected></option>
            <option value="1">Nintento Switch</option>
            <option value="2">Xbox X</option>
            <option value="3">PlayStation 5</option>
            <option value="4">PC</option>
          </select>
        </div>
      </div>

      <div class="mb-3">
        <label for="imagen">Dirección de imagen</label>
        <h6>Sugerencia: img/juegos/nombre_juego.jpg (.png)</h6>
        <input type="text" class="form-control" name="imagen" id="imagen">
      </div>

      <div class="mb-3">
        <label for="formFile" class="form-label">Subir imagen</label>
        <input class="form-control" type="file" id="formFile">
      </div>

      <div class="mb-3">
        <label for="retirar_juego">Retirar juego</label>
        <h6>NOTA: Ingresar el valor de "0", caso contrario sera despedido.</h6>
        <input type="text" class="form-control" name="retirar_juego" id="retirar_juego">
      </div>


      <div class="mb-3">
        <label for="juego_sugerido">Juego sugerido</label>
        <h6>NOTA: Ingresar el valor de "0", caso contrario sera despedido.</h6>
        <input type="text" class="form-control" name="juego_sugerido" id="juego_sugerido">
      </div>


      <a class="btn btn-danger" href="<%=request.getContextPath()%>/AdminJuegoServlet">Cancelar</a>
      <button type="submit" class="btn btn-primary">Crear</button>
    </form>
  </div>

</main>



<!--------------------------------------------------------------------------------------------------------------------->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer">

  <!-- Section: Social media -->
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
    <!-- Left -->
    <div class="me-5 d-none d-lg-block">
      <span>Conéctate con nosotras en las redes sociales:</span>
    </div>
    <!-- Left -->

    <!-- Right -->
    <div>
      <a href="" class="me-4 link-secondary">
        <i class="bi bi-facebook"></i>
      </a>
      <a href="" class="me-4 link-secondary">
        <i class="bi bi-twitter"></i>
      </a>
      <a href="" class="me-4 link-secondary">
        <i class="bi bi-instagram"></i>
      </a>
      <a href="" class="me-4 link-secondary">
        <i class="bi bi-linkedin"></i>
      </a>

    </div>
    <!-- Right -->
  </section>
  <!-- Section: Social media -->


  <!-- Section: Links  -->
  <section class="">
    <div class="container text-center text-md-start mt-5">
      <!-- Grid row -->
      <div class="row mt-3">
        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <!-- Content -->
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3 text-secondary"></i>Nombre de la compañia
          </h6>
          <p>
            Ja-Vagos, somos un grupo de estudiantes que quiere aprobar el curso de Ing. Web para Telecomunicaciones...
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Productos
          </h6>
          <p>
            <a href="#!" class="text-reset">Angular</a>
          </p>
          <p>
            <a href="#!" class="text-reset">React</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Vue</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Laravel</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Links
          </h6>
          <p>
            <a href="#!" class="text-reset">Pricing</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Settings</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Orders</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Help</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">Contacto</h6>
          <p><i class="bi bi-geo-alt me-3 text-secondary"></i>Av. Universitaria 1801, San Miguel</p>
          <p>
            <i class="bi bi-envelope me-3 text-secondary"></i>
            javagos@pucp.edu.pe
          </p>
          <p><i class="bi bi-phone me-3 text-secondary"></i> + 51 987 654 321</p>
          <p><i class="bi bi-telephone me-3 text-secondary"></i> + 01 765 567 21</p>
        </div>
        <!-- Grid column -->
      </div>
      <!-- Grid row -->
    </div>
  </section>
  <!-- Section: Links  -->



  <div class="copyright">
    &copy; Copyright <strong><span>NiceAdmin</span></strong>. Todos los derechos reservados
  </div>
  <div class="credits">
    Designed by <a href="#">Ja-Vagos</a>
  </div>
</footer>
<!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
<script src="assets/js/lista.js"></script>
</body>
</html>