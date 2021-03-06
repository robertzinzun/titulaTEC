<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-6 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Alta de Usuarios</div></div>
<div class="panel-body">
<form class="form-group" action="usuarios?op=i" method="post">
	<label>Nombre de usuario:</label>
	
	<input type="text" name="nombre" placeholder="Nombre de Usuario" required="required" class="form-control">
	<br>
	<label>Contrase&ntilde;a</label>
	<input type="password" name="pwd" placeholder="Contraseņa" required="required" class="form-control" oninput="verPwdChange();">
	<p id="pwd"></p>
	<label class="checkbox-nline"><input type="checkbox" id="verpwd" class="checbox-inline" onclick="mostrarPwd();"> Ver contraseņa</label>
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
	<div id="msg">
		<c:if test="${msg!=null}">
		<c:choose>
			<c:when test="${msg.tipo eq 'Succes'}">
				<div class="alert alert-success alert-dismissible fade in">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					${msg.mensaje}
				</div>
			</c:when>
		</c:choose>
		</c:if>
	</div>
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>
<%@ include file="../comunes/footer.jsp" %>

