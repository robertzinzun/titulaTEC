<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-6 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Alta de Opciones de Titulacion</div></div>
<div class="panel-body">
<form class="form-group" action="Opciones?op=i" method="post">
	<label>Tipo de Titulacion:</label>
	
	<input type="text" name="tipo" placeholder="Tipo de titulacion" required="required" class="form-control">
	<br>
	<label>Descripcion:</label>
	<textarea  name="desc" placeholder="Descricpion" required="required" class="form-control"></textarea>
	<br>
	<input type="submit" value="Guardar" class="btn btn-info">
	<input type="button" value="Cancelar" class="btn btn-info">
</form>
</div>
</div>
</div>
</div>
<%@ include file="../comunes/footer.jsp" %>

