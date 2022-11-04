Algoritmo a12_marco
	Definir i,j,matriz como entero;
	Dimension matriz[5,15];
	Para i<-0 hasta 4 hacer
		Para j<-0 hasta 14 hacer
            Si i == 0 o i == 4 entonces
				matriz[i,j]<-1;
            Sino
				Si j==0 o j==14 entonces
					matriz[i,j]<-1;
				Sino
					matriz[i,j]<-0;
				Finsi
            Finsi
		Finpara
	Finpara
	Escribir "";
	Escribir "Marco";
	Escribir "";
	Para i<-0 hasta 4 hacer
		Para j<-0 hasta 14 hacer
            Escribir sin saltar " ",matriz[i,j]," ";
		Finpara
		escribir "";
	Finpara
	Escribir "";
FinAlgoritmo
