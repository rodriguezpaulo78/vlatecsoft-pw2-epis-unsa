// UNIVERSIDAD NACIONAL DE SAN AGUSTIN
// ProgramaciÃ³n Web II
// Laboratorio

//declaraciÃ³n de un arreglo vacio para guardar numeros sin repetir
var usados = [];
//esta funciÃ³n genera numeros aleatorios del 0 al 9 
function aleatorio(){
	var num;
	do{ 
	num = Math.floor(Math.random()*10); 
	}while (repetido(num) == true); 
	usados.push(num); 
	return num;	
}
//Esta funciÃ³n recibe un nÃºmero y lo busca en usados
//devuelve true si el num. ya existe
function repetido(num){
	var i,repe=false;
	for (i=0; i<usados.length; i++)
		 if (num === usados[i]) 
			repe = true;
	return repe; 
} 

//crea la estructura de la tabla
document.write("<table>");
for(var i=0;i<3;i++){
  document.write("<tr>");
  for(var j=0;j<3;j++)
   document.write("<td>"+aleatorio());
  if(i===2)
  document.write("<tr><td>"+aleatorio()+"<td colspan=2>Limpiar");
}
document.write("</table>");
//se accede a la tabla
var objt=document.getElementsByTagName("table");
//se aplica estilo a la tabla
objt[0].style.backgroundColor="white";
objt[0].style.width="100px";
objt[0].style.height="100px";

//se accede a las celdas
var objceldas=document.getElementsByTagName("td");
//se aplica estilos a cada celda
for(i=0;i<objceldas.length;i++){
 objceldas[i].style.border="1px blue solid";
 objceldas[i].style.textAlign="center";
 objceldas[i].style.width="25px"; 
}
