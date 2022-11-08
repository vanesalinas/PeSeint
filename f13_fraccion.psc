Funcion leer_fraccion(n por referencia,d por referencia)
	Escribir sin saltar "Ingrese el numerador: ";
	Leer n;
	Escribir sin saltar "Ingrese el denominador: ";
	Leer d;
Finfuncion

Funcion fraccion<-escribir_fraccion(n,d)
	si d<>1 Entonces
		Escribir sin saltar n,"/",d;
	SiNo
		escribir sin saltar n;
	FinSi
Finfuncion

Funcion maxdiv<-calcular_mcd(n,d)
	definir dividendo,divisor,maxdiv,x como entero;
	//Comparamos los números para saber cuál es el mayor
	//El menor número divide al mayor
	si n>d Entonces
		dividendo<-n;
		divisor<-d;
	SiNo
		dividendo<-d;
		divisor<-n;		
	FinSi
	//Si la división es exacta el divisor es el MCD
	si dividendo mod divisor == 0 Entonces
		maxdiv<-divisor;
	SiNo
		//Dividimos el divisor entre el resto hasta obtener una división exacta
		Repetir
			x<-divisor; //guardamos el divisor anterior en una variable alternativa
			divisor<-dividendo mod divisor; //el divisor ahora va a ser el resto de la division
			dividendo<-x; //y el dividendo va a ser el divisor anterior
			maxdiv<-divisor; //el divisor actual va ser el mcd si la división es exacta
		Hasta Que  dividendo mod divisor == 0
	FinSi
Finfuncion

Funcion fraccsimp<-simplificar_fraccion(n por referencia,d por referencia)
	Definir num1,den1,mcd,fraccsimp como real;
	mcd<-calcular_mcd(n,d);
	num1<-n/mcd;
	den1<-d/mcd;
	escribir escribir_fraccion(num1,den1);
Finfuncion

Funcion sumar_fracciones(n1,d1,n2,d2)
	Definir num,den como real;
	num<-(n1*d2)+(d1*n2);
	den<-d1*d2;
	Escribir escribir_fraccion(n1,d1)," + ",escribir_fraccion(n2,d2)," = ",simplificar_fraccion(num,den);
Finfuncion

Funcion restar_fracciones(n1,d1,n2,d2)
	Definir num,den como real;
	num<-(n1*d2)-(d1*n2);
	den<-d1*d2;
	Escribir sin saltar escribir_fraccion(n1,d1)," - ",escribir_fraccion(n2,d2)," = ",simplificar_fraccion(num,den);
Finfuncion

Funcion multiplicar_fracciones(n1,d1,n2,d2)
	Definir num,den como real;
	num<-n1*n2;
	den<-d1*d2;
	Escribir escribir_fraccion(n1,d1)," x ",escribir_fraccion(n2,d2)," = ",simplificar_fraccion(num,den);
Finfuncion

Funcion dividir_fracciones(n1,d1,n2,d2)
	Definir num,den como real;
	num<-n1*d2;
	den<-n2*d1;
	Si den==0 entonces
		Escribir "El denominador debe ser distinto de 0";
	Sino
		Escribir escribir_fraccion(n1,d1)," : ",escribir_fraccion(n2,d2)," = ",simplificar_fraccion(num,den);
	Finsi      
Finfuncion

Algoritmo f13_fracciones
	Definir op como entero;
	Definir num1,num2,den1,den2 como real;
	Repetir
		Escribir "MENU";
		Escribir "------";
		Escribir "Seleccione una opción:";
		Escribir "1. Sumar dos fracciones";
		Escribir "2. Restar dos fracciones";
		Escribir "3. Multiplicar dos fracciones";
		Escribir "4. Dividir dos fracciones";
		Escribir "5. Salir";
		Leer op;
		Escribir "";
		Segun op hacer
			1:
				Escribir "- Primer fracción";
				leer_fraccion(num1,den1);
				escribir"";
				Escribir "- Segunda fracción";
				leer_fraccion(num2,den2);
				Escribir "";
				sumar_fracciones(num1,den1,num2,den2);
				Escribir "";
				Escribir "Presione enter para continuar";
			2:
				Escribir "- Primer fracción";
				leer_fraccion(num1,den1);
				escribir"";
				Escribir "- Segunda fracción";
				leer_fraccion(num2,den2);
				Escribir "";
				restar_fracciones(num1,den1,num2,den2);
				Escribir "";
				Escribir "Presione enter para continuar";
			3:
				Escribir "- Primer fracción";
				leer_fraccion(num1,den1);
				escribir"";
				Escribir "- Segunda fracción";
				leer_fraccion(num2,den2);
				Escribir "";
				multiplicar_fracciones(num1,den1,num2,den2);
				Escribir "";
				Escribir "Presione enter para continuar";
			4:
				Escribir "- Primer fracción";
				leer_fraccion(num1,den1);
				escribir"";
				Escribir "- Segunda fracción";
				leer_fraccion(num2,den2);
				Escribir "";
				dividir_fracciones(num1,den1,num2,den2);
				Escribir "";
				Escribir "Presione enter para continuar";
			5:
				Escribir "Hasta luego";
				Escribir "Presione enter para salir";
		Finsegun 
		Esperar tecla;
		Limpiar pantalla;
	Hasta que op==5
Finalgoritmo 