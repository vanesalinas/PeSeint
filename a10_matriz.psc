Algoritmo a10_matriz
	definir i,j,k,matriz,sumafilas,sumacolumnas como entero;
	Dimension matriz[5,5],sumafilas[5],sumacolumnas[5];
	Para i<-0 hasta 4 hacer
		Para j<-0 hasta 4 hacer
		    Escribir sin saltar "Ingrese un valor: ";
            Leer matriz[i,j];
		Finpara
	Finpara
	
	Para i<-0 hasta 4 hacer
		sumafilas[i]<-0;
		Para j<-0 hasta 4 hacer
			sumacolumnas[j]<-0;
			sumafilas[i]<-sumafilas[i]+matriz[i,j];
			para k<-0 hasta 4 Hacer
				sumacolumnas[j]<-sumacolumnas[j]+matriz[k,j];
			FinPara
		Finpara
	Finpara
	escribir "";
	escribir "MATRIZ:";
	escribir "";
	Para i<-0 hasta 4 hacer
		Para j<-0 hasta 4 hacer
			si matriz[i,j]<=9 Entonces
				escribir sin saltar "0",matriz[i,j]," ";
			SiNo
				escribir sin saltar matriz[i,j]," ";
			FinSi
			si j==4 Entonces
				escribir " = ",sumafilas[i];
			FinSi
		FinPara
	finpara
	escribir "=  =  =  =  =";
	para i<-0 hasta 4 Hacer
		escribir sin saltar sumacolumnas[i]," ";
	FinPara
	escribir "";
	escribir "";
FinAlgoritmo
