<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-6 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Alta de Usuarios</div></div>
<div class="panel-body">
<form class="form-group" action="usuarios?op=e">
	<label>Nombre de usuario:</label>
	
	<input type="text" name="nombre" placeholder="Nombre de Usuario" required="required" class="form-control" value="pepe">
	<br>
	<label>Contrase&ntilde;a</label>
	<input type="password" name="pwd" placeholder="Contrase�a" required="required" class="form-control" oninput="verPwdChange();" value="123">
	<p id="pwd"></p>
	<label class="checkbox-nline"><input type="checkbox" id="verpwd" class="checbox-inline" onclick="mostrarPwd();"> Ver contrase�a</label>
	<br>
	<label>Email:</label>
	<input type="email" name="email" placeholder="Email" required="required" class="form-control" value="pepe@gmail.com">
	<br>
	<label>Tipo de usuario:</label><select name="tipo" class="form-control">
		<option value="E" >Alumno</option>
		<option value="A" selected="selected">Administrador</option>
		<option value="P">Profesor</option>
		<option value="C">Coordinador</option>
		<option value="S">Servicios Escolares</option>
	</select>
	<br>
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>
<%@ include file="../comunes/footer.jsp" %>

