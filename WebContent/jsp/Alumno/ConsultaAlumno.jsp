<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-8 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Listado de alumnos</div></div>
<div class="panel-body">
<div class="form-group">
<input type="text" name="filtro" 
placeholder="Busqueda por nombre del profesor" class="form-control">
</div>
<table class="table table-hover table-bordered">
<caption>
<a href="#" class="btn btn-info"><img src="/titulaTEC/imagenes/add.gif">Agregar alumno</a>
</caption>

<tr>
	<th>No. control</th>
	<th>Nombre</th>
	<th>Sexo</th>
	<th>Telefono</th>
	<th>Carrera</th>
	<th>Editar</th>
	<th>Eliminar</th>
</tr>
<tr>
	<td>123456</td>
	<td>Raul Espitia</td>
	<td>Masculino</td>
	<td>3511007509</td>
	<td>Ing. en Sistemas Computacionales</td>
	<td><a href="#"><img src="/titulaTEC/imagenes/editar.png"></a></td>
	<td><a href="#"><img src="/titulaTEC/imagenes/eliminar.png"></a></td>
</tr>
<tr>
	<td>654321</td>
	<td>Esaul Espinoza</td>
	<td>Masculino</td>
	<td>3512002910</td>
	<td>Ing. en Sistemas Computacionales</td>
	<td><a href="#"><img src="/titulaTEC/imagenes/editar.png"></a></td>
	<td><a href="#"><img src="/titulaTEC/imagenes/eliminar.png"></a></td>
</tr>
<tr>
	<td>456789</td>
	<td>Salvador Hernandez </td>
	<td>Masculino</td>
	<td>3515151010</td>
	<td>Ing. en Sistemas Computacionales</td>
	<td><a href="#"><img src="/titulaTEC/imagenes/editar.png"></a></td>
	<td><a href="#"><img src="/titulaTEC/imagenes/eliminar.png"></a></td>
</tr>
</table>
<input type="button" value="Regresar" class="btn btn-info">
</div>
</div>
</div>
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Eliminaci&oacute;n de Registros</h4>
      </div>
      <div class="modal-body">
        <p id="texto"></p>
        
      </div>
      <div class="modal-footer">
        <div id="boton"></div>
        <button type="button" class="btn btn-primary" data-dismiss="modal">Cancelar</button>
      </div>
    </div>

  </div>
  </div>

</div>
<%@ include file="../comunes/footer.jsp"%>