Algoritmo a15_tableroResultados
	Definir i,j,goles como entero;
	Definir equipos como caracter;
	Dimension equipos[15,2], goles[15,2];
	//cargar los nombres de los equipos y goles
	Para i<-0 hasta 14 hacer
		limpiar pantalla;
		escribir "Partido ",i+1;
		escribir "---------";
		Para j<-0 hasta 1 hacer
            Escribir "Ingrese el nombre del equipo ",j+1;
            Leer equipos[i,j];
			Escribir "Ingrese goles del equipo ",j+1;
			Leer goles[i,j];			
		Finpara
		Escribir sin saltar "              ",mayusculas(equipos[i,0]);
		Escribir  "        ",mayusculas(equipos[i,1]);
		Escribir sin saltar "Resultado       ",goles[i,0];
		Escribir "            ",goles[i,1];
		escribir "";
		escribir "Presione enter para continuar";
		Esperar Tecla;
	Finpara
	limpiar pantalla;
	//Mostrar resultados
	Escribir "Resultados Finales";
	Escribir "------------------";
	Para i<-0 hasta 14 hacer
		Escribir sin saltar "              ",mayusculas(equipos[i,0]);
		Escribir  " - ",mayusculas(equipos[i,1]);
		Escribir sin saltar "Resultado        ",goles[i,0];
		Escribir "            ",goles[i,1];
	Finpara
	Escribir "";
FinAlgoritmo
