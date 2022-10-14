<template>
  <div claa="container">
    <div class="card">
      <div class="card-header">
        <h2>Listado de Responsables</h2>
      </div>
      <div class="card-body">
        <table class="table">
          <thead>
            <tr>
              <th>ID</th>
              <th>Nombre</th>
              <th>Documento</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="responsable in responsables" :key="responsable.id">
              <!-- <td scope="row"></td> -->
              <td>{{ responsable.id }}</td>
              <td>{{ responsable.nombre }}</td>
              <td>{{ responsable.documento }}</td>
              <td>
                <div class="btn-group" role="group" aria-label="">
                  <button type="button" class="btn btn-info">Editar</button>
                  <button
                    type="button"
                    v-on:click="borrarResponsable(responsable.id)"
                    class="btn btn-danger"
                  >
                    Borrar
                  </button>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      responsables: [],
    };
  },
  created: function () {
    this.lilstarResponsables();
  },
  methods: {
    lilstarResponsables() {
      fetch("http://localhost/Practica_vue/?responsables")
        .then((respuesta) => respuesta.json())
        .then((datosRespuesta) => {
          console.log(datosRespuesta);
          this.responsables = [];
          if (typeof datosRespuesta[0].success == "undefined") {
            this.responsables = datosRespuesta;
          }
        })
        .catch(console.log);
    },
    borrarResponsable(id) {
      console.log(id);
      fetch("http://localhost/Practica_vue/?borrar_resp=" + id)
        .then((respuesta) => respuesta.json())
        .then((datosRespuesta) => {
          console.log(datosRespuesta);
        });
      window.location.href = "listarresponsables";
    },
  },
};
</script>
