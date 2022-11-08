//se inicializa el vector con un carácter que va a significar que ese elemento está vacio
Funcion InicializarPila(pila por referencia,tamanio)
	Definir i como entero;
	Para i<-0 hasta tamanio-1 hacer
		pila[i]<-"*";
	Finpara
Finfuncion 

//Cuenta los elementos de la pila hasta que complete el tamaño del vector o que encuentre un elemento vacio
Funcion tam<-LongitudPila(pila,tamanio)
	Definir tam Como Entero;
	tam<-0;
	Mientras tam<tamanio Y pila[tam]<>"*"  Hacer
		tam<-tam+1;
	FinMientras
Finfuncion 

//Llamamos la función que utilizamos para contar los elementos de la pila y si es 0 significa que no tiene elementos, por lo tanto está vacia
Funcion resultado <- EstaVaciaPila(pila,tamanio)
	Definir resultado Como Logico;
	Si LongitudPila(pila,tamanio)=0 Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

//Llamamos la función que utilizamos para contar los elementos de la pila y si el valor que devuelve es igual a su tamaño significa que la pila está llena
Funcion resultado <- EstaLlenaPila(pila,tamanio)
	Definir resultado Como Logico;
	Si LongitudPila(pila,tamanio)=tamanio Entonces
		resultado<-Verdadero;
   	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

//Si la función estallenapila es falsa, significa que aún tiene elementos vacíos el vector, de lo contrario está llena y no podremos agregar más elementos
//La función recibe el vector pila por referencia para que nos permita agregar elementos en el, su tamaño y el elemento que querramos agregar que en este caso es una cadena
//Si la pila no está llena va a añadir esa cadena en la siguiente posición vacia
Funcion AddPila(cad, pila Por Referencia,tamanio)
	Si EstaLlenaPila(pila,tamanio)==falso Entonces
		pila[LongitudPila(pila,tamanio)]<-cad;
	SiNo
		Escribir "No se puede añadir elemento. La pila está llena";
	FinSi
FinFuncion

//Con un funcionamiento similar a la función anterior lo que hacemos es sacar el último elemento y asignar ese espacio con el carácter que indica que el elemento está vacio
//Si la pila está vacía mostramos un mensaje de error ya que no tenemos elementos para sacar
Funcion cad <- SacarDeLaPila(pila Por Referencia,tamanio)
	Definir cad Como Caracter;
	Si EstaVaciaPila(pila,tamanio)==falso Entonces
		escribir sin saltar "Elemento eliminado: ";
		cad <- pila[LongitudPila(pila,tamanio)-1];
		pila[LongitudPila(pila,tamanio)-1]<-"*";
	SiNo
		Escribir "No se puede sacar elemento. La pila está vacia";
		cad<-"";	
	FinSi
FinFuncion

//Está función muestra los elementos de la pila por pantalla. Trae el vector pila y su tamaño
//Usamos un mientras porque solo mostramos las posiciones que tienen un elemento, es decir, mientras que el contador sea menor al tamaño del vector y que el elemento sea distinto de *
//Aunque también se podría utilizar un para desde i<-0 hasta longitudpila-1
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
		Escribir "Seleccione una opción";
		Escribir "1.- Añadir elemento a la pila";
		Escribir "2.- Sacar elemento de la pila";
		Escribir "3.- Longitud de la pila";
		Escribir "4.- Mostrar pila";
		Escribir "5.- Salir";
		Leer opcion;
		Escribir "";
		Segun opcion Hacer
			1:
				Escribir sin Saltar "Ingrese la cadena para añadir a la pila: ";
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

