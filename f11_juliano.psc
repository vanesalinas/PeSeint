Funcion leerfecha(dia por referencia,mes por referencia,anio por referencia)
	Escribir "Ingrese fecha con el siguiente formato: 2 digitos para el día, 2 para el mes y 4 para el año";
	Escribir sin saltar "Día: ";
	Leer dia;
	Escribir sin saltar "Mes: ";
	Leer mes;
	Escribir sin saltar "Año: ";
	Leer anio;
Finfuncion

Funcion dia<-diasdelmes(mes,anio)
	Definir bisiesto como logico;
	Definir dia como entero;
	segun mes hacer
		2: 
			Si esBisiesto(anio)==verdadero entonces
				dia<-29;
			Sino
				dia<-28;
			Finsi
		4,6,9,11:
			dia<-30;
		1,3,5,7,8,10,12:
			dia<-31;
	finsegun
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
	Escribir "Fecha ingresada: ",dd,"/",mm,"/",aa;
	Escribir "Es el día juliano ",calcular_dia_juliano(dd,mm,aa);
FinAlgoritmo
