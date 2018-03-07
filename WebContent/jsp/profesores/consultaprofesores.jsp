<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-8 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Listado General Profesores</div></div>
<div class="panel-body">
<div class="form-group">
<input type="text" name="filtro" 
placeholder="Busqueda por nombre del profesor" class="form-control">
</div>
<table class="table table-hover table-bordered">
<caption>
<a href="#" class="btn btn-info"><img src="/titulaTEC/imagenes/add.gif">Agregar Profesor</a>
</caption>

<tr>
	<th>Nombre</th>
	<th>Sexo</th>
	<th>Telefono</th>
	<th>Escolaridad</th>
	<th>Cedula</th>
	<th>Carrera</th>
	<th>Editar</th>
	<th>Eliminar</th>
</tr>
<tr>
	<td>juanito</td>
	<td>juanito123</td>
	<td>5207845</td>
	<td>Universidad</td>
	<td>qyy537as</td>
	<td>Ing. en Sistemas Computacionales</td>
	<td><a href="#"><img src="/titulaTEC/imagenes/editar.png"></a></td>
	<td><a href="#"><img src="/titulaTEC/imagenes/eliminar.png"></a></td>
</tr>
<tr>
	<td>pedro</td>
	<td>pedro123</td>
	<td>5207845</td>
	<td>Universidad</td>
	<td>qyy537as</td>
	<td>Ing. en Sistemas Computacionales</td>
	<td><a href="#"><img src="/titulaTEC/imagenes/editar.png"></a></td>
	<td><a href="#"><img src="/titulaTEC/imagenes/eliminar.png" onclick="eliminar('2','pedro','usuario');" data-toggle="modal" data-target="#myModal"></a></td>
</tr>
<tr>
	<td>Admin</td>
	<td>Admin123</td>
	<td>5207845</td>
	<td>Universidad</td>
	<td>qyy537as</td>
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