<template>
   <div class="container">
        <div class="card">
            <div class="card-header">
               <h2>Ingresar nuevo responsable</h2>
            </div>
            <div class="card-body">
                <form v-on:submit.prevent="agregarResponsable">
                    <form class="form-inline">
                        <div class="form-group">
                            <label for="documento">Documento:</label>
                            <input type="text" name="documento" v-model="responsable.documento" id="documento" class="form-control" placeholder="" aria-describedby="helpId">
                            <small id="helpId" class="text-muted">Ingrese Documento Responsable</small>
                        </div>
                    </form>
                    <div class="form-group">
                      <label for="nombre">Nombre:</label>
                      <input type="text"
                        class="form-control" name="nombre" v-model="responsable.nombre" id="nombre" aria-describedby="helpId" placeholder="">
                      <small id="helpId" class="form-text text-muted">Ingresar nombre del responsable</small>
                    </div>
                    <div class="form-group">
                      <label for="apellido">Apellido:</label>
                      <input type="text"
                        class="form-control" name="apellido" v-model="responsable.apellido" id="apellido" aria-describedby="helpId" placeholder="">
                      <small id="helpId" class="form-text text-muted">Ingrese apellido del responsable</small>
                    </div>
                    <div class="form-group">
                      <label for="correo">Correo:</label>
                      <input type="text"
                        class="form-control" name="correo" v-model="responsable.correo" id="serial" aria-describedby="helpId" placeholder="">
                      <small id="helpId" class="form-text text-muted">Ingrese correo del responsable</small>
                    </div>
                    <div class="btn-group" role="group" aria-label="">
                        <button type="submit" class="btn btn-success">Agregar</button>
                        <button type="button" class="btn btn-warning">Cancelar</button>
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
        responsable:{}
      }
    },
    methods:{
        agregarResponsable(){
          var responseClone;
          console.log(this.responsable);
          var datosEnviar={documento:this.responsable.documento , nombre:this.responsable.nombre, apellido:this.responsable.apellido , correo:this.responsable.correo}
          fetch ('http://localhost/practica2/?insertar_resp=1', {
            method:"POST",
            body:JSON.stringify(datosEnviar)
          })
          .then((respuesta) =>{
            responseClone=respuesta.clone();
            return respuesta.json();
          })
          .then((datosRespuesta) => {
            console.log(datosRespuesta)
          }, function(rejectionReason){
            console.log('error parsing JSON from response.', rejectionReason, responseClone);
            responseClone.text()
            .then(function(bodyText){
              console.log('Recived the following instead of invalid JSON', bodyText);
            });
          })
        }
      }
    
} 
</script> 

