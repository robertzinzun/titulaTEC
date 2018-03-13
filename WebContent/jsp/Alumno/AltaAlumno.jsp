<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-6 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Alta de Alumnos</div></div>
<div class="panel-body">
<form class="form-group">
	<label>Numero de control:</label>
	<input type="text" name="nombre" placeholder="Numero de control" required="required" class="form-control">
	<br>
	
	<label>Id de la carrera:</label>
	<input type="text" name="nombre" placeholder="Id de la carrera" required="required" class="form-control">
	<br>
	
	<label>Id de usuario:</label>
	<input type="text" name="nombre" placeholder="Id de usuario" required="required" class="form-control">
	<br>
	
	<label>Nombre del alumno :</label>
	<input type="text" name="nombre" placeholder="Nombre del alumno" required="required" class="form-control">
	<br>
	
	
	<table class="table">
	<tr><label>Sexo:</label></tr>
	
	<tr>
	<td><label>M</label></td>
	<td><label>F</label></td>
	</tr>
	
	<tr>
	<td><input type="radio" name="sexo" value="M" checked="checked" ></td>
	<td><input type="radio" name="sexo" value="F"></td>
	</tr>
	</table>
	
	<label>Telefono:</label>
	<input type="text" name="telefono" placeholder="Telefono" required="required" class="form-control">
	<br>
	
	<br>
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>
<%@ include file="../comunes/footer.jsp" %>

