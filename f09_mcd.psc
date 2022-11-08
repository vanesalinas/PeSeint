funcion maxdiv<-mcdivisor(num1,num2)
	definir dividendo,divisor,maxdiv,x como entero;
	si num1>num2 Entonces
		dividendo<-num1;
		divisor<-num2;
	SiNo
		dividendo<-num2;
		divisor<-num1;		
	FinSi
	si dividendo mod divisor == 0 Entonces
		maxdiv<-divisor;
	SiNo
		Repetir
			x<-divisor;
			divisor<-dividendo mod divisor;
			dividendo<-x;
			maxdiv<-divisor;
		Hasta Que  dividendo mod divisor == 0
	FinSi
FinFuncion

Algoritmo f09_mcd
	Definir n1,n2 como entero;
	definir mcd como real;
	escribir sin saltar "Ingrese el primer numero: ";
	leer n1;
	escribir sin saltar "Ingrese el segundo numero: ";
	leer n2;
	mcd<-mcdivisor(n1,n2);
	escribir "El maximo comun divisor es ",mcd;
FinAlgoritmo
