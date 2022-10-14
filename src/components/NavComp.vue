<template>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="HomeView">LOGO</a>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdownMenuLink"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Lista de Activos
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <li>
                <a class="dropdown-item" href="listarequiposbio"
                  >Equipos Biomedicos
                </a>
              </li>
              <li>
                <a class="dropdown-item" href="listarequipossis"
                  >Equipos de Sistemas</a
                >
              </li>
              <li>
                <a class="dropdown-item" href="listarequiposinfra"
                  >Infraestructura</a
                >
              </li>
              <li>
                <a class="dropdown-item" href="listarequiposna">No Asigandos</a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="listarresponsables"
              >Lista de Responsables</a
            >
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>
