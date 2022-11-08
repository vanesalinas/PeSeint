Algoritmo arreglo3
	definir vector como entero;
	definir i,c,suma como entero;
	definir media como real;
	dimension vector[10];
	suma<-0;
	c<-0;
	para i<-0 hasta 9 Hacer
		vector[i]<-i+1;
		suma<-suma+vector[i];
		c<-c+1;
	FinPara
	media<-suma/c;
	escribir "Elementos del vector";
	Para i<-0 hasta 9 Hacer
		Escribir vector[i];
	FinPara
	escribir "La media de sus elementos es ",media;
FinAlgoritmo
