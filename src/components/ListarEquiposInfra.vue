<template>
  <div claa="container">
    <div class="card">
      <div class="card-header">
        <h2>Listado de Infraestructura</h2>
      </div>
      <div class="card-body row tbl-fixed" style="overflow: auto">
        <table
          border="1"
          class="table table-hover table-ligth table-bordered table-stripe"
        >
          <thead class="table-secondary">
            <tr>
              <th>ID</th>
              <th>Nombre</th>
              <th>Marca</th>
              <th>Modelo</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="equipo in equipos" :key="equipo.id">
              <template v-if="equipo.area == 1">
                <td>{{ equipo.id }}</td>
                <td>{{ equipo.nombre }}</td>
                <td>{{ equipo.marca }}</td>
                <td>{{ equipo.modelo }}</td>
                <td>
                  <div class="btn-group" role="group" aria-label="">
                    <button type="button" class="btn btn-info">Editar</button>
                    <button
                      type="button"
                      v-on:click="borrarEquipo(equipo.id)"
                      class="btn btn-danger"
                    >
                      Borrar
                    </button>
                  </div>
                </td>
              </template>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "ListarEquiposInfra",
  data() {
    return {
      equipos: [],
    };
  },
  created: function () {
    this.lilstarEquipos();
  },
  methods: {
    lilstarEquipos() {
      fetch("http://localhost/Practica_vue/")
        .then((respuesta) => respuesta.json())
        .then((datosRespuesta) => {
          console.log(datosRespuesta);
          this.equipos = [];
          if (typeof datosRespuesta[0].success == "undefined") {
            this.equipos = datosRespuesta;
          }
        })
        .catch(console.log);
    },
    borrarEquipo(id) {
      console.log(id);
      fetch("http://localhost/Practica_vue/?borrar=" + id)
        .then((respuesta) => respuesta.json())
        .then((datosRespuesta) => {
          console.log(datosRespuesta);
        });
      window.location.href = "listarequiposinfra";
    },
  },
};
</script>
