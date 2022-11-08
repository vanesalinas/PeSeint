Algoritmo arreglo2
	definir vector como entero;
	definir i, suma como entero;
	dimension vector[10];
	suma<-0;
	para i<-0 hasta 9 Hacer
		vector[i]<-i+1;
		suma<-suma+vector[i];
	FinPara
	escribir "Elementos del vector";
	Para i<-0 hasta 9 Hacer
		Escribir vector[i];
	FinPara
	escribir "La suma de sus elementos es ",suma;
FinAlgoritmo
