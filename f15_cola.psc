Funcion InicializarCola(cola por referencia,tamanio)
	Definir i como entero;
	Para i<-0 hasta tamanio-1 hacer
		cola[i]<-"*";
	Finpara
Finfuncion 

Funcion tam<-LongitudCola(cola,tamanio)
	Definir tam Como Entero;
	tam<-0;
	Mientras tam<tamanio Y cola[tam]<>"*"  Hacer
		tam<-tam+1;
	FinMientras
Finfuncion 

Funcion resultado <- EstaVaciaCola(cola,tamanio)
	Definir resultado Como Logico;
	Si LongitudCola(cola,tamanio)=0 Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

Funcion resultado <- EstaLlenaCola(cola,tamanio)
	Definir resultado Como Logico;
	Si LongitudCola(cola,tamanio)=tamanio Entonces
		resultado<-Verdadero;
   	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

Funcion AddCola(cad,cola Por Referencia,tamanio)
	Si EstaLlenaCola(cola,tamanio)==falso Entonces
		cola[LongitudCola(cola,tamanio)]<-cad;
	SiNo
		Escribir "No se puede a�adir elemento. La cola est� llena";
	FinSi
FinFuncion

Funcion cad <- SacarDeLaCola(cola Por Referencia,tamanio)
	Definir cad Como Caracter;
	Definir i como entero;
	Si EstaVaciaCola(cola,tamanio)==falso Entonces
		escribir sin saltar "Elemento eliminado: ";
		cad <- cola[0];
		Para i<-0 hasta tamanio-2 hacer
			cola[i]<-cola[i+1]; //movemos todos los elementos a la posici�n anterior 
		Finpara
		cola[tamanio-1]<-"*"; //asignamos la �ltima posici�n con el caracter que indica que ese elemento est� vacio (*)
	SiNo
		Escribir "No se puede sacar elemento. La cola est� vacia";
		cad<-"";	
	FinSi
FinFuncion

Funcion EscribirCola(cola,tamanio)
	Definir i Como Entero;
	i<-0;
	Mientras i<tamanio y cola[i]<>"*" Hacer
		Escribir Sin Saltar cola[i]," ";
		i<-i+1;
	FinMientras
	Escribir "";
FinFuncion

Algoritmo f15_cola
	Definir cola_a,elem Como Caracter;
	Definir tamanio_a,opcion como Entero;
	Dimension cola_a[10];
	tamanio_a<-10;
	InicializarCola(cola_a,tamanio_a);
	Repetir
		Escribir "Seleccione una opci�n";
		Escribir "1.- A�adir elemento a la cola";
		Escribir "2.- Sacar elemento de la cola";
		Escribir "3.- Longitud de la cola";
		Escribir "4.- Mostrar cola";
		Escribir "5.- Salir";
		Leer opcion;
		Escribir "";
		Segun opcion Hacer
			1:
				Escribir sin Saltar "Ingrese la cadena para a�adir a la cola: ";
				Leer elem;
				AddCola(elem,cola_a,tamanio_a);
				Escribir "";
				Escribir "Presione enter para continuar";
			2:
				Escribir SacarDeLaCola(cola_a,tamanio_a);
				Escribir "";
				Escribir "Presione enter para continuar";
			3:
				Escribir "Longitud:  ",LongitudCola(cola_a,tamanio_a);
				Escribir "";
				Escribir "Presione enter para continuar";
			4:
				EscribirCola(cola_a,tamanio_a);
				Escribir "";
				Escribir "Presione enter para continuar";
			5:
				Escribir "Hasta luego";
				Escribir "Presione enter para salir";
		FinSegun
		Esperar tecla;
		Limpiar pantalla;
	Hasta Que opcion=5;
Finalgoritmo 