/**
 * 
 */
function reenviar(url){
	alert('Enviando a:'+url);
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
function mostrarOpciones(){
	var xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function(){
		if(this.readyState==4 && this.status==200){
			generarTablaOpciones(this.responseText);
		}
	};
	xhttp.open("POST","Opciones?op=cg", true);
	xhttp.send();
}
function generarTablaOpciones(respuesta){
	var datos=eval(respuesta);
	if(datos.length==0){
		document.getElementById("datos").
		innerHTML="No hay registros";
		return;
	}
	var table='<table class="table table-hover '+ 
		'table-bordered">'
	table+='<th>ID</th>';
	table+='<th>NOMBRE</th>';
	table+='<th>DESCRIPCION</th>';
	for(var i=0;i<datos.length;i++){
		table+='<tr>';
		table+='<td>'+datos[i].id+'</td>';
		table+='<td>'+datos[i].nombre+'</td>';
		table+='<td>'+datos[i].descripcion+'</td>';
		table+='</tr>';
	}
	table+='</table>';
	document.getElementById("datos").innerHTML=table;
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
function consultaAulas(){
	var xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function(){
		if(this.readyState==4 && this.status==200){
			generarTablaAulas(this.responseText);
		}
	};
	xhttp.open("post", "aulas?op=cg", true);
	xhttp.send();
}
function generarTablaAulas(datos){
	if(datos.length==0){
		document.getElementById("datos").innerHTML="No hay Registros";
	}
	else{
		var table='<table class="table table-hover table-bordered">';
		table+='<th>ID</th>';
		table+='<th>NOMBRE</th>';
		table+='<th>UBICACION</th>';
		var arr=eval(datos);
		for(var i=0;i<arr.length;i++){
			table+='<tr>';
			table+='<td>'+arr[i].id+'</td>';
			table+='<td>'+arr[i].nombre+'</td>';
			table+='<td>'+arr[i].ubicacion+'</td>';
			table+='</tr>'
		}
		table+='</table>';
		document.getElementById("datos").innerHTML=table;
	}
}
function generaHoras(){
	var hi=document.getElementById("horaInicio");
	for(var i=8;i<=19;i++){
		var option=document.createElement("option");
		var texto=document.createTextNode(i+":00");
		option.setAttribute("value", i+":00");
		option.appendChild(texto);
		hi.appendChild(option);
	}
	var hf=document.getElementById("horaFin");
	for(var i=8;i<=20;i++){
		var option=document.createElement("option");
		var texto=document.createTextNode(i+":00");
		option.setAttribute("value", i+":00");
		option.appendChild(texto);
		hf.appendChild(option);
	}
	document.getElementById("guardar").disabled=true;
}
function mostrarAlumnos(){
	var select=document.getElementById("carrera");
	if(select.value!=0){
		document.getElementById("guardar").disabled=false;
		XMLHttpRequest
		ajax = new XMLHttpRequest();
		ajax.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				generarOpcionesAlumnos(this.responseText);
			}
		};
		ajax.open("get", "Actos?op=cac&idCarrera="+select.value, true);
		ajax.send();
	}
	else{
		document.getElementById("guardar").disabled=true;
	}
}
function generarOpcionesAlumnos(datos){
	//alert(datos);
	borrarAlumnos();
	var array=eval(datos);
	var select=document.getElementById("alumno");
	for(var i=0;i<array.length;i++){
		var option=document.createElement("option");
		var texto=document.createTextNode(array[i].nombre);
		option.setAttribute("value", array[i].nc);
		option.appendChild(texto);
		select.appendChild(option);
	}
}
function borrarAlumnos(){
	var select=document.getElementById("alumno");
	for(var i=select.options.length-1;i>0;i--){
		select.removeChild(select.options[i]);
	}
}
function filtrar(){
	var value = $("#filtrar").val().toLowerCase();
    $("#datos tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
}





