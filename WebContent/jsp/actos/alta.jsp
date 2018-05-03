<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-6 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Alta de Actos</div></div>
<div class="panel-body">
<form class="form-group" action="Actos?op=i" method="post">
	<label>Carrera:</label>
	<select name='carrera' id="carrera" onchange="mostrarAlumnos();">
		<option value="0">--Elige una Carrera--</option>
		<c:forEach var="carrera" items="${carreras}">
			<option value="${carrera.id}">${carrera.nombre}</option>
		</c:forEach>
	</select>
	<br>
	<label>Alumno:</label>
	<select name="alumno" id="alumno">
		<option value="0">--Elige un Alumno--</option>
	</select>
	<br>
	<label>Aula:</label>
	<select name="aula" id="aula">
		<option value="0">--Elige una Aula--</option>
		<c:forEach var="aula" items="${aulas}">
			<option value="${aula.id}">${aula.nombre}</option>
		</c:forEach>
	</select>
	<br>
	<label>Opcion:</label>
	<select name="opcion" id="opciones">
		<option value="0">--Elige una Opcion--</option>
		<c:forEach var="opcion" items="${opciones}">
			<option value="${opcion.id}">${opcion.nombre}</option>
		</c:forEach>
	</select>
	<br>
	<label>Fecha del Acto:</label>
	<input type="date" name="fechaActo" required="required">
	<br>
	<label>Hora Inicio:</label>
	<select name="horaInicio" id="horaInicio">
		<option value="0">--Elige una Hora--</option>
	</select>
	<br>
	<label>Hora Fin:</label>
	<select name="horaFin" id="horaFin">
		<option value="0">--Elige una Hora--</option>
	</select>
	<br>
	<label>Detalle de la Opcion:</label>
	<input type="text" name="detalleOpcion">
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
	<input type="submit" value="Guardar" class="btn btn-info" id="guardar">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>
<%@ include file="../comunes/footer.jsp" %>

