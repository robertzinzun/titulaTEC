<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>

<div class="container">
<div class="mainbox col-md-6 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Actos</div></div>
<div class="panel-body">
<form class="form-group">
	<label>No. de Control:</label>
	<input type="text" name="nc" required="required" class="form-control">
	<br>
	
	<label>Aula:</label>
	<input type="text" name="aula" required="required" class="form-control">
	<br>
	
	<label>Fecha de Solicitud:</label>
	<input type="date" name="fechasol" required="required" class="form-control">
	<br>
	
	<label>Fecha del Acto:</label>
	<input type="date" name="fechaact" required="required" class="form-control">
	<br>
	
	<label>Hora de Inicio:</label>
	<input type="time" name="horaini" required="required" class="form-control">
	<br>
	
	<label>Hora de Finalizaci&oacute;n:</label>
	<input type="time" name="horafin" required="required" class="form-control">
	<br>
	
	<label>Dictamen:</label>
	<input type="text" name="dictamen" required="required" class="form-control">
	<br>
	
	<label>Opci&oacute;n:</label>
	<select name="tipoop" class="form-control">
		<option value="A">A</option>
		<option value="B">B</option>
		<option value="C">C</option>
		<option value="D">D</option>
		<option value="E">E</option>
	</select>
	<br>
	
	<label>Detalle de Opci&oacute;n:</label>
	<input type="text" name="dictamen" required="required" class="form-control">
	<br>
	
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>

<%@ include file="../comunes/footer.jsp" %>