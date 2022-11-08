Algoritmo a13_kmrecorridos
	definir i,j,cant,km,total_km como entero;
	definir nombre como caracter;
	escribir "Ingrese la cantidad de choferes:";
	leer cant;
	dimension nombre[cant], km[cant,7], total_km[cant];
	//Ingresa nombres choferes
	para i<-0 hasta cant-1 Hacer
		escribir "Ingrese Apellido y nombre del chofer ",i+1,":";
		leer nombre[i];
	FinPara
	//carga km por dia de cada chofer en la matriz 
	escribir "";
	para i<-0 hasta cant-1 Hacer
		escribir "Ingrese los km recorridos de cada chofer";
		escribir "----------------------------------------";
		escribir Mayusculas(nombre[i]);
		total_km[i]<-0;
		para j<-0 hasta 6 Hacer
			escribir sin saltar "KM dia ",j+1;
			leer km[i,j];
			total_km[i]<-total_km[i]+km[i,j]; //suma los km de cada chofer
		FinPara
		limpiar pantalla;
	FinPara
	escribir "KM recorridos en la semana";
	escribir "--------------------------";
	para i<-0 hasta cant-1 Hacer
		escribir "**",Mayusculas(nombre[i]),": ",total_km[i],"km";
	FinPara
	escribir "";
FinAlgoritmo
