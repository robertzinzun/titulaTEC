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
	<input type="text" name="ubi" placeholder="Ubicaci&oacute;n" required="required" class="form-control" id="ubi">
	<br>
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>
<%@ include file="../comunes/footer.jsp" %>
