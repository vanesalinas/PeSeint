funcion calculo1<-convert1(hs,ms,ss) //convertir a segundos
	Definir calculo1 como entero;
	calculo1<-(hs*3600)+(ms*60)+ss;
FinFuncion

funcion convert2(seg) //convertir a horas
	Definir h,m,s como entero;
	h<-trunc(seg/3600);
	m<-trunc((seg mod 3600)/60);
	s<-seg-(h*3600)-(m*60);
	Si m<10 entonces
		Si s<10 entonces 
			Escribir "Los ",seg," segundos ingresados equivalen a: ",h,":0",m,":0",s;
		Sino
			Escribir "Los ",seg," segundos ingresados equivalen a: ",h,":0",m,":",s;
		Finsi
	Sino
		Si s<10 entonces 
			Escribir "Los ",seg," segundos ingresados equivalen a: ",h,":",m,":0",s;
		Sino
			Escribir "Los ",seg," segundos ingresados equivalen a: ",h,":",m,":",s;
		Finsi
	Finsi
FinFuncion

Algoritmo f10_tiempo  
	definir op,hora,min,seg como entero;
	Repetir    
		escribir "MENU";  //crear menu para que el usuario elija si convierte a horas o segundos
		escribir "Seleccione una opcion";
		escribir "1 - Convertir a segundos";
		escribir "2 - Convertir a horas, minutos y segundos";
		escribir "3 - Salir del programa";
		leer op;
		escribir"";
		segun op Hacer
			1:
				escribir sin saltar "Ingrese la cantidad de horas: ";
				leer hora;
				escribir sin saltar "Minutos: ";
				leer min;
				escribir sin saltar "Segundos: ";
				leer seg;
				//llamar funcion dentro del escribir
				escribir "";
				Escribir "El tiempo ingresado equivale a ",convert1(hora,min,seg)," segundos";
				escribir "";
				escribir "Presione enter para continuar";
			2:
				escribir sin saltar "Ingrese la cantidad de segundos: ";
				leer seg;
				escribir "";
				convert2(seg); //llama funcion
				escribir "";
				escribir "Presione enter para continuar";
			3: escribir "Muchas gracias";
				escribir "";
				escribir "Presione enter para salir";
		FinSegun
		//escribir "";
		//escribir "Presione enter para continuar";
		esperar tecla;
		limpiar pantalla;
	Hasta Que op==3
FinAlgoritmo
