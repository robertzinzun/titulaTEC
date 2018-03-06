/**
 * 
 */
function reenviar(url){
	location.href=url;
}
function eliminar(id,nombre,tipo){
	document.getElementById("texto") .innerHTML="¿Estas seguro de eliminar al "+tipo+":"+nombre+" ?";
	document.getElementById("boton").innerHTML="<input type=\"button\" value=\"Aceptar\" class=\"btn btn-primary\" data-dismiss=\"modal\" " +
			"onclick=\"borrar('"+id+"');\">";
}
function borrar(id){
	alert("Borrando a "+id);
}
function mostrarPwd(){
	var chb=document.getElementById("verpwd");
	if(chb.checked){
		document.getElementById("pwd").innerHTML=
			document.getElementsByName("pwd")[0].value;
	}
	else{
		document.getElementById("pwd").innerHTML="";
	}
	
}
function verPwdChange(){
	var chb=document.getElementById("verpwd");
	if(chb.checked){
		document.getElementById("pwd").innerHTML=
			document.getElementsByName("pwd")[0].value;
	}
	else{
		document.getElementById("pwd").innerHTML="";
	}
}