<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-8 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Listado General Usuarios</div></div>
<div class="panel-body">
<div class="form-group">
<input type="text" name="filtro" 
placeholder="Busqueda por nombre del usuario" class="form-control">
</div>
<table class="table table-hover table-bordered">
<caption>
<a href="#" class="btn btn-info"><img src="/titulaTEC/imagenes/add.gif">Agregar Usuario</a>
</caption>

<tr>
	<th>Nombre</th>
	<th>Password</th>
	<th>Email</th>
	<th>Tipo</th>
	<th>Editar</th>
	<th>Eliminar</th>
</tr>
<tr>
	<td>juanito</td>
	<td>juanito123</td>
	<td>juanito@gmail.com</td>
	<td>E</td>
	<td><a href="#"><img src="/titulaTEC/imagenes/editar.png"></a></td>
	<td><a href="#"><img src="/titulaTEC/imagenes/eliminar.png"></a></td>
</tr>
<tr>
	<td>pedro</td>
	<td>pedro123</td>
	<td>pedro@gmail.com</td>
	<td>P</td>
	<td><a href="#"><img src="/titulaTEC/imagenes/editar.png"></a></td>
	<td><a href="#"><img src="/titulaTEC/imagenes/eliminar.png" onclick="eliminar('2','pedro','usuario');" data-toggle="modal" data-target="#myModal"></a></td>
</tr>
<tr>
	<td>Admin</td>
	<td>Admin123</td>
	<td>admin@gmail.com</td>
	<td>A</td>
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