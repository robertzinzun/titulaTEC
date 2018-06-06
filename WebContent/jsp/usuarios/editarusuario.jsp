<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-6 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Edición del Perfil</div></div>
<div class="panel-body">
<form class="form-group" action="acceso?op=g" method="post">
	<label>Nombre de usuario:</label>
	
	<input type="text" name="nombre" placeholder="Nombre de Usuario" required="required" class="form-control" value="${usuario.nombre}">
	<br>
	<label>Contrase&ntilde;a</label>
	<input type="password" name="pwd" placeholder="Contraseña" required="required" class="form-control" oninput="verPwdChange();" value="${usuario.clave}">
	<p id="pwd"></p>
	<label class="checkbox-nline"><input type="checkbox" id="verpwd" class="checbox-inline" onclick="mostrarPwd();"> Ver contraseña</label>
	<br>
	<label>Email:</label>
	<input type="email" name="email" placeholder="Email" required="required" class="form-control" value="${usuario.email}">
	<br>
	<label>Tipo de usuario:</label><select name="tipo" class="form-control">
	<c:choose>
	<c:when test="${usuario.tipo eq 'E'}">
		<option value="E" selected="selected">Alumno</option>
		<option value="A">Administrador</option>
		<option value="P">Profesor</option>
		<option value="C">Coordinador</option>
		<option value="S">Servicios Escolares</option>
	</c:when>	
	<c:when test="${usuario.tipo eq 'A' }">
	<option value="E">Alumno</option>
		<option value="A" selected="selected">Administrador</option>
		<option value="P">Profesor</option>
		<option value="C">Coordinador</option>
		<option value="S">Servicios Escolares</option>
	</c:when>
	<c:when test="${usuario.tipo eq 'P' }">
	<option value="E">Alumno</option>
		<option value="A" >Administrador</option>
		<option value="P" selected="selected">Profesor</option>
		<option value="C">Coordinador</option>
		<option value="S">Servicios Escolares</option>
	</c:when>
	<c:when test="${usuario.tipo eq 'C' }">
	<option value="E">Alumno</option>
		<option value="A" >Administrador</option>
		<option value="P" >Profesor</option>
		<option value="C" selected="selected">Coordinador</option>
		<option value="S">Servicios Escolares</option>
	</c:when>
	<c:when test="${usuario.tipo eq 'S' }">
		<option value="E">Alumno</option>
		<option value="A" >Administrador</option>
		<option value="P" >Profesor</option>
		<option value="C" >Coordinador</option>
		<option value="S" selected="selected">Servicios Escolares</option>
	</c:when>
	<c:otherwise>
		<option value="N">--Elige el tipo --</option>
		<option value="E">Alumno</option>
		<option value="A" >Administrador</option>
		<option value="P" >Profesor</option>
		<option value="C" >Coordinador</option>
		<option value="S" >Servicios Escolares</option>
	</c:otherwise>	
	</c:choose>
	</select>
	<label>Estatus:</label>
	<c:choose>
		<c:when test="${usuario.estatus eq 'A'}">
			<input type="checkbox" name="estatus" checked="checked" value="A">
		</c:when>
		<c:otherwise>
			<input type="checkbox" name="estatus" value="B">
		</c:otherwise>
	</c:choose>
	<input type="hidden" name="idUsuario" value="${usuario.id}">
	<br>
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>
<%@ include file="../comunes/footer.jsp" %>

