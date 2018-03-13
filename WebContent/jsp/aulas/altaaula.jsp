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
	<select class="form-control" name="ubi",id="ubi">
		<option value=""></option>
		<option value="ep">Edificio Principal</option>
		<option value="cc">Centro de Computo</option>
		<option value="ea">Edificio de Alimentarias</option>
		<option value="ei">Edificio de Industrial</option>
		<option value="ee">Edificio de electronica</option>
		<option value="to">Torcazas</option>
		<option value="ec">Ecuandureo</option>
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
