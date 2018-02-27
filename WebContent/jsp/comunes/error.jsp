<%@ include file="../comunes/header.jsp" %>
<%@page isErrorPage="true" %>
<div id="error" class="container" align="center">
	
	<div class="col-sm-15">
	<h1>¡¡ Error !!</h1>
	<br><br>
	<img alt="Imagen_Error" src="/Checador/images/err.png"><br><br>
	<div>
	
	<div class="alert alert-danger">
	<strong>
	<img alt="" src="/Checador/images/error_msg.png"><c:out value="${msg.msg}"/>
	</strong>
	</div>
	<br><br>
	</div>
	<br>
	<a href="index.jsp" class="regresar"> Regresar a la página principal </a>
	</div>
</div>
<%@ include file="../comunes/footer.jsp" %>