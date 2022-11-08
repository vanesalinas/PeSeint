Funcion leerfecha(dia por referencia,mes por referencia,anio por referencia)
	definir ok como logico;
	definir op como entero;
	Escribir "Ingrese fecha con el siguiente formato: 2 digitos para el día, 2 para el mes y 4 para el año";
	Escribir sin saltar "Día: ";
	Leer dia;
	Escribir sin saltar "Mes: ";
	Leer mes;
	Escribir sin saltar "Año: ";
	Leer anio;
	escribir"";
	ok<-validarfecha(dia,mes,anio);
	si ok==falso entonces
		escribir "Ha ingresado un formato de fecha incorrecto";
		escribir "¿Desea ingresarlo nuevamente?";
		escribir "1 - SI";
		escribir "2 - NO";
		leer op;
		escribir "";
		si op==1 entonces
			Escribir "Ingrese fecha con el siguiente formato: 2 digitos para el día, 2 para el mes y 4 para el año";
			Escribir sin saltar "Día: ";
			Leer dia;
			Escribir sin saltar "Mes: ";
			Leer mes;
			Escribir sin saltar "Año: ";
			Leer anio;
			escribir"";
		sino
			escribir "Hasta luego";
		finsi
	finsi
Finfuncion

Funcion ok<-validarfecha(dia,mes,anio)
	definir ok como logico;
	definir op como entero;
	si anio>0 entonces
		si mes>=1 y mes<=12 entonces
			si dia>=1 y dia<=diasdelmes(mes,anio) entonces
				ok<-verdadero;
			sino
				ok<-falso;
			finsi              
		sino
			ok<-falso;
		finsi
	sino
		ok<-falso;
	finsi
Finfuncion

Funcion dias<-diasdelmes(mes,anio)
	Definir bisiesto como logico;
	Definir dias como entero;
	Si mes==02 entonces
		bisiesto<-esBisiesto(anio);
		Si bisiesto==verdadero entonces
			dias<-29;
		Sino
			dias<-28;
		Finsi
	sino
		Si mes==04 o mes==06 o mes==09 o mes==11 entonces
			dias<-30;
		Sino
			dias<-31;
		Finsi
	finsi
Finfuncion

Funcion aa<-esBisiesto(anio)
	Definir aa como logico; 
	Si anio mod 4 == 0 entonces
		Si anio mod 100 == 0 entonces
			Si anio mod 400 == 0 entonces
				aa<-verdadero;
			sino
				aa<-falso;
			Finsi
		sino
			aa<-verdadero;
		Finsi
	sino
		aa<-falso;
	Finsi
Finfuncion 

Funcion juliano<-calcular_dia_juliano(dia,mes,anio)
	Definir i,juliano como entero;
	juliano<-0;
	Para i<-1 hasta mes-1 hacer
		juliano<-juliano+diasdelmes(i,anio);
	Finpara
	juliano<-juliano+dia;
Finfuncion 

Algoritmo f11_juliano
	definir dd,mm,aa como entero;
	leerfecha(dd,mm,aa);
	escribir"";
	si validarfecha(dd,mm,aa)==verdadero Entonces
		Escribir "Fecha ingresada: ",dd,"/",mm,"/",aa;
		Escribir "Es el día juliano ",calcular_dia_juliano(dd,mm,aa);
	FinSi
Finalgoritmo