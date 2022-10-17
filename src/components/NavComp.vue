<template>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="/">LOGO</a>
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
              Activos
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <li>
                <router-link :to="{name:'ListarEquiposBio'}" class="dropdown-item"> Equipos biomedicos</router-link>
 
              </li>
              <li>
                <router-link :to="{name:'ListarEquiposSis'}" class="dropdown-item"> Equipos de Sistemas</router-link>
              </li>
              <li>
                <router-link :to="{name:'ListarEquiposInfra'}" class="dropdown-item"> Equipos de Infraestructura</router-link>
              </li>

              <li>
                <router-link :to="{name:'ListarEquiposNa'}" class="dropdown-item"> No asignados</router-link>
              </li>
              <li>
                <router-link :to="{name:'ListarEquipos'}" class="dropdown-item"> Ver todos</router-link>
              </li>
              <li><hr class="dropdown-divider" /></li>
              <li class="nav-item">
                <a class="nav-link" href="crearequipo">Crear equipo</a>
              </li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdownMenuLink"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Responsables
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <li class="nav-item">
                <router-link :to="{name:'ListarResponsables'}" class="dropdown-item"> Listar responsables</router-link>
              </li>
              <li><hr class="dropdown-divider" /></li>
              <li class="nav-item">
                <router-link :to="{name:'CrearResponsable'}" class="dropdown-item"> Crear responsable</router-link>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>
