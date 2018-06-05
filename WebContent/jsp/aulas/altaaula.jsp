<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-6 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Alta de Aulas</div></div>
<div class="panel-body">
<form class="form-group">
	<label for="nombre">Nombre del aula:</label>
	<input type="text" name="nombre" placeholder="Nombre del aula" required="required" class="form-control" id="nombre">
	<label for="ubi">Ubicaci&oacute;n</label>
	<select class="form-control" name="ubicacion" id="ubicacion">
		<option>Edificio Principal</option>
		<option>Centro de Computo</option>
		<option>Edificio de Alimentarias</option>
		<option>Edificio de Industrial</option>
		<option>Edificio de electronica</option>
		<option>Torcazas</option>
		<option>Ecuandureo</option>
	</select>
	<br>
	<div id="notificaciones">
	</div>
	<input type="button" value="Guardar" class="btn btn-info" onclick="insertarAula();">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>
<%@ include file="../comunes/footer.jsp" %>
