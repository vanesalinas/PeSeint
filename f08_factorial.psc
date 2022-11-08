funcion f<-factorial(num)
	definir f,i como real;
	f<-1;
	Para i=1 Hasta num Hacer
		f<-f*i;
	FinPara
FinFuncion

Algoritmo f08_factorial
	definir i como entero;
	definir n,fact Como Real;
	escribir "Ingrese un numero: ";
	leer n;
	fact<-factorial(n);
	escribir "El factorial del numero es:";
	escribir sin saltar n,"! = ";
	si n<=10 Entonces
		para i<-1 hasta n Hacer
			si i==n Entonces
				escribir sin saltar i;
			SiNo
				escribir sin saltar i," x ";
			FinSi
		FinPara
		escribir sin saltar " = ",fact;
	sino 
		escribir sin saltar fact;
	FinSi
	escribir "";
FinAlgoritmo
