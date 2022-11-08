//se inicializa el vector con un car�cter que va a significar que ese elemento est� vacio
Funcion InicializarPila(pila por referencia,tamanio)
	Definir i como entero;
	Para i<-0 hasta tamanio-1 hacer
		pila[i]<-"*";
	Finpara
Finfuncion 

//Cuenta los elementos de la pila hasta que complete el tama�o del vector o que encuentre un elemento vacio
Funcion tam<-LongitudPila(pila,tamanio)
	Definir tam Como Entero;
	tam<-0;
	Mientras tam<tamanio Y pila[tam]<>"*"  Hacer
		tam<-tam+1;
	FinMientras
Finfuncion 

//Llamamos la funci�n que utilizamos para contar los elementos de la pila y si es 0 significa que no tiene elementos, por lo tanto est� vacia
Funcion resultado <- EstaVaciaPila(pila,tamanio)
	Definir resultado Como Logico;
	Si LongitudPila(pila,tamanio)=0 Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

//Llamamos la funci�n que utilizamos para contar los elementos de la pila y si el valor que devuelve es igual a su tama�o significa que la pila est� llena
Funcion resultado <- EstaLlenaPila(pila,tamanio)
	Definir resultado Como Logico;
	Si LongitudPila(pila,tamanio)=tamanio Entonces
		resultado<-Verdadero;
   	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

//Si la funci�n estallenapila es falsa, significa que a�n tiene elementos vac�os el vector, de lo contrario est� llena y no podremos agregar m�s elementos
//La funci�n recibe el vector pila por referencia para que nos permita agregar elementos en el, su tama�o y el elemento que querramos agregar que en este caso es una cadena
//Si la pila no est� llena va a a�adir esa cadena en la siguiente posici�n vacia
Funcion AddPila(cad, pila Por Referencia,tamanio)
	Si EstaLlenaPila(pila,tamanio)==falso Entonces
		pila[LongitudPila(pila,tamanio)]<-cad;
	SiNo
		Escribir "No se puede a�adir elemento. La pila est� llena";
	FinSi
FinFuncion

//Con un funcionamiento similar a la funci�n anterior lo que hacemos es sacar el �ltimo elemento y asignar ese espacio con el car�cter que indica que el elemento est� vacio
//Si la pila est� vac�a mostramos un mensaje de error ya que no tenemos elementos para sacar
Funcion cad <- SacarDeLaPila(pila Por Referencia,tamanio)
	Definir cad Como Caracter;
	Si EstaVaciaPila(pila,tamanio)==falso Entonces
		escribir sin saltar "Elemento eliminado: ";
		cad <- pila[LongitudPila(pila,tamanio)-1];
		pila[LongitudPila(pila,tamanio)-1]<-"*";
	SiNo
		Escribir "No se puede sacar elemento. La pila est� vacia";
		cad<-"";	
	FinSi
FinFuncion

//Est� funci�n muestra los elementos de la pila por pantalla. Trae el vector pila y su tama�o
//Usamos un mientras porque solo mostramos las posiciones que tienen un elemento, es decir, mientras que el contador sea menor al tama�o del vector y que el elemento sea distinto de *
//Aunque tambi�n se podr�a utilizar un para desde i<-0 hasta longitudpila-1
Funcion EscribirPila(pila,tamanio)
	Definir i Como Entero;
	i<-0;
	Mientras i<tamanio y pila[i]<>"*" Hacer
		Escribir Sin Saltar pila[i]," ";
		i<-i+1;
	FinMientras
	Escribir "";
FinFuncion

Algoritmo f14_pila
	Definir pila_a,elem Como Caracter;
	Definir tamanio_a,opcion como Entero;
	Dimension pila_a[10];
	tamanio_a<-10;
	InicializarPila(pila_a,tamanio_a);
	Repetir
		Escribir "Seleccione una opci�n";
		Escribir "1.- A�adir elemento a la pila";
		Escribir "2.- Sacar elemento de la pila";
		Escribir "3.- Longitud de la pila";
		Escribir "4.- Mostrar pila";
		Escribir "5.- Salir";
		Leer opcion;
		Escribir "";
		Segun opcion Hacer
			1:
				Escribir sin Saltar "Ingrese la cadena para a�adir a la pila: ";
				Leer elem;
				AddPila(elem,pila_a,tamanio_a);
				Escribir "";
				Escribir "Presione enter para continuar";
			2:
				Escribir SacarDeLaPila(pila_a,tamanio_a);
				Escribir "";
				Escribir "Presione enter para continuar";
			3:
				Escribir "Longitud:  ",LongitudPila(pila_a,tamanio_a);
				Escribir "";
				Escribir "Presione enter para continuar";
			4:
				EscribirPila(pila_a,tamanio_a);
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

