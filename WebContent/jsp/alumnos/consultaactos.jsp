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
	
	<label>Aula</label>
	<input type="text" name="aula" required="required" class="form-control">
	<br>
	
	<label>Fecha de Solicitud</label>
	<input type="date" name="fsolicitud" required="required" class="form-control">
	<br>
	
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>

<%@ include file="../comunes/footer.jsp" %>