Algoritmo arreglo5
	definir vector como entero;
	definir i,p como entero;
	dimension vector[10];
	para i<-0 hasta 9 Hacer
		vector[i]<-i+1;
	FinPara
	escribir "Indique en que posicion se encuentra el elemento que desea visualizar:";
	leer p;
	Escribir "El elemento ubicado en la posicion ",p," es ",vector[p];
FinAlgoritmo
