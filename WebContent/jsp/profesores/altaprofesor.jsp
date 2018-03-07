<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-6 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Alta de Profesores</div></div>
<div class="panel-body">
<form class="form-group">

	<label>Nombre de usuario:</label>
	
	<input type="text" name="nombre" placeholder="Nombre de Usuario" required="required" class="form-control">
	<br>
	<label>Contrase&ntilde;a</label>
	<input type="password" name="pwd" placeholder="Contraseña" required="required" class="form-control" oninput="verPwdChange();">
	<p id="pwd"></p>
	<label class="checkbox-nline"><input type="checkbox" id="verpwd" class="checbox-inline" onclick="mostrarPwd();"> Ver contraseña</label>
	<br>
	<br>
	<label>Email:</label>
	<input type="email" name="email" placeholder="Email" required="required" class="form-control">
	<br>
	<label>Tipo de usuario:</label><select name="tipo" class="form-control">
		<option value="E">Alumno</option>
		<option value="A">Administrador</option>
		<option value="P">Profesor</option>
		<option value="C">Coordinador</option>
		<option value="S">Servicios Escolares</option>
	</select>
	<br>

	<label>Carrera:</label><select name="idcarrera" class="form-control">
		<option value="1">Ing. en Sistemas Computacionales</option>
		<option value="2">Ing. en Industrias Alimentarias</option>
		<option value="3">Ing. en Electronica</option>
		<option value="4">Ing. Industrial</option>
		<option value="5">Contador Publico</option>
		<option value="6">Ing. en Tecnologias de la Informacion y Comunicacion</option>
	</select>
	<br>

	<label>Nombre:</label>
	<input type="text" name="nombre" placeholder="Nombre del profesor" required="required" class="form-control">
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
	
	<label>Escolaridad:</label><select name="escolaridad" class="form-control">
		<option value="P">Primaria</option>
		<option value="S">Secundaria</option>
		<option value="E">Preparatoria</option>
		<option value="U">Universidad</option>
		<option value="M">Maestria</option>
		<option value="D">Doctorado</option>
	</select>
	<br>
	
	<label>Cedula:</label>
	<input type="text" name="cedula" placeholder="Cedula" required="required" class="form-control">
	<br>
	
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>
<%@ include file="../comunes/footer.jsp" %>

