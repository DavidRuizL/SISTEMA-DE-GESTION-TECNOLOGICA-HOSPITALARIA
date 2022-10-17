<template>
  <div class="container">
       <div class="card">
           <div class="card-header">
              <h2>Editar activo</h2>
           </div>
           <div class="card-body">
               <form v-on:submit.prevent="actualizarEquipo">
                   <form class="form-inline">
                     <div class="form-group">
                     <label class="form-label" for="nombre">Nombre:</label>
                     <input type="text" 
                       class="form-control" name="nombre" v-model="equipo.nombre" id="nombre" aria-describedby="helpId" placeholder="" required>
                     <small id="helpId" class="form-text text-muted">Ingresar nombre del equipo</small>
                   </div>                        
                   </form>
                     <div class="form-group">
                     <label for="marca">Marca:</label>
                     <input type="text"
                       class="form-control" name="marca" v-model="equipo.marca" id="marca" aria-describedby="helpId" placeholder="" required>
                     <small id="helpId" class="form-text text-muted">Ingrese marca del equipo</small>
                   </div>
                   <div class="form-group">
                     <label for="modelo">Modelo:</label>
                     <input type="text"
                       class="form-control" name="modelo" v-model="equipo.modelo" id="modelo" aria-describedby="helpId" placeholder="" required>
                     <small id="helpId" class="form-text text-muted">Ingrese modelo del equipo</small>
                   </div>
                   <div class="form-group">
                     <label for="serial">Serial:</label>
                     <input type="text"
                       class="form-control" name="serial" v-model="equipo.serial" id="serial" aria-describedby="helpId" placeholder="" required>
                     <small id="helpId" class="form-text text-muted">Ingrese serial del equipo</small>
                   </div>
                   <div class="form-group">
                     <label for="doc_resp">Documento del responsable:</label>
                     <input type="text"
                       class="form-control" name="doc_resp" v-model="equipo.doc_resp" id="doc_resp" aria-describedby="helpId" placeholder="" required>
                     <small id="helpId" class="form-text text-muted">Ingrese documento del responsable</small>
                   </div>
                   <div class="form-group">
                     <label for="nom_resp">Nombre del responsable:</label>
                     <input type="text"
                       class="form-control" name="nom_resp" v-model="equipo.nom_resp" id="nom_resp" aria-describedby="helpId" placeholder="" required>
                     <small id="helpId" class="form-text text-muted">Ingrese nombre del responsable</small>
                   </div>
                   <div class="form-group">
                      <h6>Área:</h6>
                      <select class="form-select" v-model="equipo.area" aria-label="Default select example" required>
                        <option selected>Seleccione el área al que pertenece el equipo</option>
                        <option value=0>Biomédica</option>
                        <option value=1>Infra</option>
                        <option value=2>Sis</option>
                        <option value=3>NA</option>
                      </select>
                    </div>
                   <div class="btn-group" role="group" aria-label="">                         
                        <button type="submit" class="btn btn-success">Actualizar</button>
                       <router-link :to="{name:'ListarEquipos'}" class="btn btn-warning" href="">Cancelar</router-link>
                   </div>
               </form>
               
           </div>
           
       </div>
   </div> 
</template>

<script>
export default {
  data(){
    return{
      equipo:{}
    }
  },
  created: function () {
    this.consultarInformacionID();
  },

  methods:{
      consultarInformacionID(){
      fetch("http://localhost/Practica_vue/?consultar="+this.$route.params.id)
      .then((respuesta) => respuesta.json())
      .then((datosRespuesta) => {
        console.log(datosRespuesta);
        this.equipo = datosRespuesta[0]
      })
      .catch(console.log);
      },
      actualizarEquipo(){
        var datosEnviar={id:this.$route.params.id,nombre:this.equipo.nombre , marca:this.equipo.marca , modelo:this.equipo.modelo , serial:this.equipo.serial , doc_resp:this.equipo.doc_resp , nom_resp:this.equipo.nom_resp , area:this.equipo.area}
        fetch ('http://localhost/Practica_vue/?actualizar='+this.$route.params.id, {
          method:"POST",
          body:JSON.stringify(datosEnviar)
        })
        .then((respuesta) =>respuesta.json)
        .then()

        .then((datosRespuesta) => {
          console.log(datosRespuesta)
          window.location.href="../listarequipos"
          });
        }
      
      }
    }
  
</script> 


