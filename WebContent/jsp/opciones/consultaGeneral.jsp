<%@ include file="../comunes/header.jsp" %>
<%@ include file="../comunes/menu.jsp" %>
<div class="container">
<div class="mainbox col-md-8 col-md-offset-2">
<div class="panel panel-info ">
<div class="panel-heading"><div class="panel-title">Listado General Opciones</div></div>
<div class="panel-body">
<div class="form-group">
<input type="text" name="filtro" 
placeholder="Busqueda por nombre de la opción" class="form-control" id="filtrar" 
onkeyup="filtrar();">
</div>
<table class="table table-hover table-bordered" id="datos">
<caption>
<a href="Opciones?op=n" class="btn btn-info"><img src="/titulaTEC/imagenes/add.gif">Agregar Opcion</a>
</caption>

<tr>
	<th>ID</th>
	<th>NOMBRE</th>
	<th>DESCRIPCION</th>
	<th>Editar</th>
	<th>Eliminar</th>
</tr>
<c:forEach items="${opciones}" var="opcion">	
<tr>
	<td>${opcion.id}</td>
	<td>${opcion.nombre}</td>
	<td>${opcion.descripcion}</td>
	<td><a href="Opciones?op=ci&idOpcion=${opcion.id}"><img src="/titulaTEC/imagenes/editar.png"></a></td>
	<td><img src="/titulaTEC/imagenes/eliminar.png" onclick="eliminarOpcion('${opcion.id}','${opcion.nombre}');" data-toggle="modal" data-target="#myModal"></td>
</tr>
</c:forEach>
</table>
<div id="paginacion">
<ul class="pagination">
<c:forEach var="i" begin="1" end="${paginas}" step="1">
	<c:choose>
		<c:when test="${pag eq i}">
			<li id="pagina${i}" class="active">
				<a href="Opciones?op=cp&page=${i}">${i}</a>
			</li>
		</c:when>
		<c:otherwise>
			<li id="pagina${i}">
				<a href="Opciones?op=cp&page=${i}">${i}</a>
			</li>
		</c:otherwise>		
	</c:choose>	
</c:forEach>
</ul>
</div>
<input type="button" value="Regresar" class="btn btn-info" onclick="reenviar('Opciones?op=reg');">
</div>
</div>
</div>
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Eliminaci&oacute;n de Registros</h4>
      </div>
      <div class="modal-body">
        <p id="textoMostrar"></p>
        
      </div>
      <div class="modal-footer">
        <div id="boton"></div>
        <button type="button" class="btn btn-primary" data-dismiss="modal">Cancelar</button>
      </div>
    </div>

  </div>
  </div>

</div>
<%@ include file="../comunes/footer.jsp"%>