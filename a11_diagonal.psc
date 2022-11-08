Algoritmo a11_diagonal
	Definir i,j,matriz como entero;
	Dimension matriz[5,5];
	Para i<-0 hasta 4 hacer
		Para j<-0 hasta 4 hacer
            Si i==j entonces
				matriz[i,j]<-1;
            Sino
				matriz[i,j]<-0;
			Finsi
		Finpara
	FinPara
	Escribir "";
	Escribir "Matriz Diagonal:";
	Escribir "";
	Para i<-0 hasta 4 hacer
		Para j<-0 hasta 4 hacer
			Escribir sin saltar " ",matriz[i,j]," ";
		Finpara
		escribir "";
	Finpara
	Escribir "";
	
FinAlgoritmo
